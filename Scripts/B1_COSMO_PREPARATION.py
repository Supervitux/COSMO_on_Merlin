#
#       This script gets as input one line written to the .csv file by 'B1_CREATE_SAMPLES.py'.
#       It proceeds to create a .sdf file for COSMOconf using BALLOON and writes the number of hydrogen bond
#       donors to a file
#

import sys
import numpy as np
import pandas as pd
from scipy.sparse import load_npz, save_npz, csr_matrix
from joblib import dump, load
from rdkit import Chem
from rdkit import DataStructs
from multiprocessing import Pool
import multiprocessing
import subprocess

print("Output path has to be adjusted, default './'")

def main():

        index  = sys.argv[1]
        SMILES = sys.argv[2]
        nhb    = sys.argv[3]

        if int(nhb) > 8:
                print("This molecule has more than 8 hydrogenbond donors and cannot be dealt with with current scripts, the scripts need to be updated")
                exit()

        moleculeDir = "./"
        output_name = str(index) + ".sdf"
        commandstr = "balloon --nconfs 1 --noGA \""+ SMILES + "\" " + moleculeDir + output_name
        subprocess.run(commandstr, shell=True, stderr=subprocess.PIPE)

        nhb_str = "echo " + str(nhb) + " > " + moleculeDir + "/nhb.txt "
        subprocess.run(nhb_str, shell=True, stderr=subprocess.PIPE)

        # Start COSMO
        print("DONE! Next run 'cosmosconfcalc-with-sampling' in the COSMO directory.")


if __name__ == "__main__":
        main()


