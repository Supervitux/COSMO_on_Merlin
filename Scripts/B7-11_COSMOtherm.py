#       This script is called from 'ActiveAtmos', it will go through all prepared directories
#       and run routines B7 - B11 to calculate pSat for all the molecules
#       SETUP: This needs to run in a directory with the COSMOconf and Turbomole outputs as subdirs

import os
import subprocess
import shutil
import glob
import multiprocessing
import sys
from multiprocessing import Pool

def main():
        
        print("Calculate pSat")
#       Input
        path2scripts = sys.argv[1]
#       Check exist status of the calculation
        diagnose =      checkCalculation()
        if diagnose == "fail":
                print("Diagnose is 'fail'")
                exit()
        else: 
                print("Diagnose is 'good'")
        
#       1.Run B7 - B11 in all directories
        CalculateSinglePsat(path2scripts)

def CalculateSinglePsat(path2scripts):

        # get number of hydrogenbond donors 
        F       = open("../../nhb.txt","r") #! Could also be taken from Merlin env variable
        nhb     = F.read()
        nhb     = nhb.strip() 

        # Switch wrk directory
        #os.chdir(pSat_dir)

        # call B7 and pass nhb
        B7_str = path2scripts + "B7_prSteric.sh " + nhb + " " + path2scripts
        print("Running: \n" + B7_str)
        subprocess.run(B7_str, shell=True, stderr=subprocess.PIPE) # B7, B8, B9 happen in here
        print("B7-B9 done")
        # Calculate pSat ( = call B10) I CAN USE 4 cores here!
        B10ff = path2scripts + 'B10-11_COSMOtherm.sh ' + nhb
        print("Running: \n" + B10ff)
        subprocess.run(B10ff, shell=True, stderr=subprocess.PIPE)
        print("B10+ done")

def checkCalculation():
       
        diagnosis = "fail" 
        no_energy = False; no_cosmo = False; slurm_err = False; time_lim = False; unknown_err = False

        # Check if my output directories exist
        if not os.path.isdir('../Results_of_BP-TZVPD-FINE-COSMO'):
                no_cosmo =      True
        # Check if .err file contains error messages
        for errfile_ in glob.glob('*.err'):
                err_f = open(errfile_, "r")
                last_line = err_f.readlines()[-1]
                if "slurmstepd: error" in last_line:
                        slurm_err =     True
                        if "DUE TO TIME LIMIT" in last_line:
                                time_lim = True
                        else:
                                unknown_err = True
        if time_lim:
                print("Restart with more cores / more time or discard if it was on its maximum")
                # Send a modified batch job

                # Or discard/archive the calculation

        elif unknown_err:
                print("Failed to unknow reasons")
                # discard/archive the calculation
        elif (no_energy or no_cosmo):
                print("Where did my outputfiles go?")
        else:
                diagnosis = "good"

        return diagnosis
        
                        
        
if __name__ == "__main__":
        main()



