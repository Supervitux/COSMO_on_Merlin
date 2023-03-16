# COSMO_on_Merlin
This repository contains all scripts necessary to conduct large scale computation of molecules with the COSMOtherm/COSMOconf software within a Merlin workflow. Find details on how to use Merlin in its [documentation](https://merlin.readthedocs.io/en/latest/merlin_workflows.html).

The WORKFLOW.yaml contains the Merlin instructions and all calls of other scripts. All the called scripts are described in that file as well, they can be found in the "Scripts" directory.

This Merlin workflow operates with a pandas dataframe containing molecules. It will identify molecules that have already been calculated given an "index" file containing already calculated molecules.
