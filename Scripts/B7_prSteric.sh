#!/bin/bash

#
#	This script runs a COSMOtherm calc. for all conformers with the pr_steric keyword
#	which allows identifcation of intramolecular H-Bonds

nconfs=10000
for f in *.list     # For the ONE list
	do 
	NAME=`echo "$f" | cut -d'.' -f1`    # get name withoutending -> number
	if [ ! -f $NAME-h-bonds.out ] # if the output file from pr_steric doesn't exist yet
	then
		 echo "ctd = BP_TZVPD_FINE_21.ctd cdir = /projappl/project_2003525/beselvit/Apps/COSMOtherm2021/COSMOtherm/CTDATA-FILES ldir = /projappl/project_2003525/beselvit/Apps/COSMOtherm2021/licensefiles
fdir=$(pwd) wtln unit notempty ehfile pr_steric
! Vapor pressure calculation
f = \$DATABASE=COSMOFILES.txt  
" > $NAME-h-bonds.inp

	         #checking the total number of conformers in COSMOFILES.txt
		 nlines=$(echo $(wc -l $f) | cut -d' ' -f1)	#total number of conformers
		 n=$(( nconfs < nlines ? nconfs : nlines ))	#the minimum of nconfs and nlines
		 head -$n $f > COSMOFILES.txt			#taking n confs and saving the database file as COSMOFILES.txt
		 sed -i '1 s/$/ [/g' COSMOFILES.txt	#adding brackets to the database file
		 sed -i "$n s/.cosmo/.cosmo ]/g" COSMOFILES.txt

		/projappl/project_2003525/beselvit/Apps/COSMOtherm2021/COSMOtherm/BIN-LINUX/cosmotherm $NAME-h-bonds.inp -n 4 
	fi
# if h-bonds-confs.txt file doesn't exist, run h-bonds script
	if [ ! -f $NAME-h-bonds-confs.txt ]
	then
		echo "$f number of H-bond donors?"
		nhb=$1
                echo $nhb
		$2/B8-9_intramolHbonds.sh $NAME-h-bonds COSMOFILES $nhb
	fi

done



