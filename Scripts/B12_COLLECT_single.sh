#
#	This script collects all the relevant data from the COSMOtherm output
#

# Extract index from .list file
lst_file=`ls *.list`
ind=${lst_file%.*}

# Extract minimum number of intramolecular H-bonds
if [ -e COSMOFILES-lt0bonds.txt ]; then
        intraNHB=0
elif [ -e COSMOFILES-lt1bonds.txt ]; then
     intraNHB=1
elif [ -e COSMOFILES-lt2bonds.txt ]; then
     intraNHB=2
elif [ -e COSMOFILES-lt3bonds.txt ]; then
     intraNHB=3
elif [ -e COSMOFILES-lt4bonds.txt ]; then
     intraNHB=4
elif [ -e COSMOFILES-lt5bonds.txt ]; then
        intraNHB=5
else
        echo "Too many intramolecular H-Bonds"
        echo "Possibly failed in different way"
        intraNHB=NaN
        pSat=NaN
        NumOfConf=NaN
        NumOfConfUsed=NaN
        ChemPot_kcalmol=NaN
        FreeEnergy_kcalmol=NaN
        HeatOfVap_kcalmol=NaN
fi

# Extract saturation vapor pressure
pSat=`grep 'Vapor pressure of compound over the mixture' "lt"$intraNHB"bonds.out" | awk '{print $9}'`
ChemPot_kcalmol=`grep 'Chemical potential of the compound in the mixture' "lt"$intraNHB"bonds.out" | awk '{print $10}'`
FreeEnergy_kcalmol=`grep 'Free energy of molecule in mix (E_COSMO+dE+Mu)' "lt"$intraNHB"bonds.out" | awk '{print $9}'`
HeatOfVap_kcalmol=`grep 'Heat of vaporization' "lt"$intraNHB"bonds.out" | awk '{print $5}'`

# Number of conformers
NumOfConf=`ls *.cosmo | wc -l`

# Number of conformers used
NumOfConfUsed=`wc -l "COSMOFILES-lt"$intraNHB"bonds.txt" | awk '{print $1}'`

echo "$ind,$pSat,$intraNHB,$NumOfConf,$NumOfConfUsed,$ChemPot_kcalmol,$FreeEnergy_kcalmol,$HeatOfVap_kcalmol,$(date)" > ../../"COLLECTED_DATA_"$ind".txt"
