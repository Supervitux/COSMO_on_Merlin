#
#       This script extracts from the datapool (joblib .dump file) the index, SMILES, nhb and writes it
#       to a simple csv file which is then taken by Merlin YAML as samples
#       DETAIL:
#               Provide a npz. file with ['remaining_idxs', 'prediction_idxs', 'test_idxs'] as first arg
#               Provide a .txt file with indices that are already calculated to avoid recalculating them
#               Only new indices will be used!

#       MODULES
print("Run 'conda activate my-rdkit-env' if there are problems")
import numpy as np
import os
import sys
import pandas as pd
import joblib as jl
import rdkit
import datetime

def main():

        # Take input (indices)
        print("Getting inputs")
        ALL_DATA        = "SourceData/DATAPOOL.dump"
        print(ALL_DATA + " loaded")
        full_idx_file   = sys.argv[1]
        output_path     = sys.argv[2]
        specroot        = sys.argv[3] # $(SPECROOT)/
        # Get name
        input_name       = os.path.basename(full_idx_file)
        input_name       = os.path.splitext(input_name)[0]
        # Process further
        full_idx        = np.load(full_idx_file) # npz. file contains ['remaining_idxs', 'prediction_idxs', 'test_idxs']
        prediction_idxs_all = full_idx['prediction_idxs']
        prediction_idxs_lab =  np.loadtxt(specroot + "Indices/idx_labeled.txt")  # Some file I saved
        prediction_idxs_fail=  np.loadtxt(specroot + "Indices/idx_notConv.txt") 
        prediction_idxs_old = np.r_[prediction_idxs_lab, prediction_idxs_fail]
        prediction_idxs_new =  np.setdiff1d(prediction_idxs_all, prediction_idxs_old).astype('int32')# Diff of _all and _old
        print(str(prediction_idxs_new.shape[0]) + " of requested idx will be calculated, rest has been calculated or attempted to be calculated")
        

        # Load df_
        print("Loading ALL_DATA dataframe ...")
        df_all = jl.load(ALL_DATA)

        # Take indices
        df_new = df_all.loc[prediction_idxs_new] 
        
        # REMOVE MOLECULES BASED ON CONDITIONS
        df_new = df_new.loc[df_new["NumOfN"] < 3] # Remove all molecules with more than two Nitrogen
        
        # Sort df by size
        df_new = df_new.sort_values("NumOfAtoms", ascending=False)

        del df_all  # del df for mem
        
        # Retrieve molecules requested
        # convert to .sdf (parallely) and create directory env
        print("Preparing .csv with selected molecules ...")
        list_df = list(df_new['SMILES'])
        list_nhb_df = list(df_new['NumHBondDonors'])
        idx_df = df_new.index
        IndexNSmiles    = list(zip(idx_df, list_df,list_nhb_df))
        IndexNSmiles_df = pd.DataFrame(IndexNSmiles)
        # Write index, SMILES and nhb to .csv
        IndexNSmiles_df.to_csv(output_path + input_name + ".csv", header = False, index = False)
        print(output_path + input_name)
        # Write new indices
        date = datetime.datetime.now().strftime("%Y_%m_%d-%I_%M")
        np.savetxt(specroot + "Indices/idx_extracted_" + date + ".txt", prediction_idxs_all, fmt='%d') 

if __name__ == "__main__":
        main()

