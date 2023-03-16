#
#       This script collects the calculated vapor pressures (and NumOfConf and NumOfConfUsed) 
#       and adds them to the original datapool
#

#       MODULES
import numpy as np
import pandas as pd
import joblib as jl
import os
import sys
import rdkit
from datetime import datetime

def main():

        
        # INPUT
        print("Getting inputs")
        data_path       = sys.argv[2] # This is Merlin's $(SPECROOT)
        ALL_DATA        = data_path + "SourceData/DATAPOOL.dump"
        path2label      = sys.argv[1]
        df_all  = jl.load(ALL_DATA)
        print(ALL_DATA + " loaded")
        print(df_all.columns)

        # Load calculated labels
        df_new  = pd.read_csv(path2label, header=0)

        # Check if there are NaN in "IDX" if so abort!
        if df_new['IDX'].isnull().values.any():
                print("THERE ARE INDICES MISSING! ABORT! FIX THESE FIRST!")
                sys.exit("Fix your indices!")

        df_new  = df_new.set_index('IDX')
        labeled_idxs_all_new = df_new.index.values
        print(df_new.index)
        print(df_new.columns)
        
        # If columns do not exist yet create them for the datapool
        if not 'intraNHB' in df_all.columns:
                df_all['intraNHB']      = np.nan
                df_all['NumOfConf']     = np.nan
                df_all['NumOfConfUsed'] = np.nan
                df_all['ChemPot_kcalmol']      = np.nan               
                df_all['FreeEnergy_kcalmol']     = np.nan
                df_all['HeatOfVap_kcalmol'] = np.nan
        if not 'ENDTIME' in df_all.columns:
                df_all['ENDTIME']      = np.nan

        # Find not converged calculation
        # Where NumOfConfUsed != np.nan but p_Sat == np.nan
        df_notConv = df_new.loc[df_new['pSat_mbar'].isna()] # Catches calculations that ultimately did not converge probably (or time out in the very end)
        print("Failed calculations:", df_notConv.shape)
        print("Successful calculations:", df_new.shape)
        idx_notConv = df_notConv.index.values
        # Now join them
        df_labeled = df_all.combine_first(df_new)
        labeled_idxs_all =  np.setdiff1d(labeled_idxs_all_new, idx_notConv).astype('int32')
        del df_new
        del df_all
        jl.dump(df_labeled, data_path + "SourceData/DATAPOOL.dump")
        # Save labeled indices
        print("Write indices...")
        date = datetime.now().strftime("%Y_%m_%d-%I_%M")
        np.savetxt(data_path + "Indices/idx_labeled_" + date + ".txt", labeled_idxs_all, fmt='%d')
        np.savetxt(data_path + "Indices/idx_notConv_" + date + ".txt", idx_notConv, fmt='%d') 

if __name__ == "__main__":
        main()


