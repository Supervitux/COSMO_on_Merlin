#!/bin/bash
#	Creates files (COSMOFILES-___.txt) that contain conformers that have a certain number 
#	of intra-molecular H-bonds. After the pSat is calculated using these conformer
nconfs=40

for f in *h-bonds-confs.txt
do

	NAME2=`echo "$f" | cut -d'.' -f1`
	#up to 8 H-bond donors at the moment?
	awk '{ if ( $2 == "0" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-00bonds.txt
	awk '{ if ( $2 == "0" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-01bonds.txt
	awk '{ if ( $2 == "0" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-02bonds.txt
	awk '{ if ( $2 == "0" && $3 =="3" ) { print $0; }}' $NAME2.txt > COSMOFILES-03bonds.txt
	awk '{ if ( $2 == "0" && $3 =="4" ) { print $0; }}' $NAME2.txt > COSMOFILES-04bonds.txt
	awk '{ if ( $2 == "0" && $3 =="5" ) { print $0; }}' $NAME2.txt > COSMOFILES-05bonds.txt
	awk '{ if ( $2 == "0" && $3 =="6" ) { print $0; }}' $NAME2.txt > COSMOFILES-06bonds.txt
        awk '{ if ( $2 == "0" && $3 =="7" ) { print $0; }}' $NAME2.txt > COSMOFILES-07bonds.txt
        awk '{ if ( $2 == "0" && $3 =="8" ) { print $0; }}' $NAME2.txt > COSMOFILES-08bonds.txt
        awk '{ if ( $2 == "0" && $3 =="9" ) { print $0; }}' $NAME2.txt > COSMOFILES-09bonds.txt
	awk '{ if ( $2 == "1" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-10bonds.txt
	awk '{ if ( $2 == "1" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-11bonds.txt
	awk '{ if ( $2 == "1" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-12bonds.txt
	awk '{ if ( $2 == "1" && $3 =="3" ) { print $0; }}' $NAME2.txt > COSMOFILES-13bonds.txt
	awk '{ if ( $2 == "1" && $3 =="4" ) { print $0; }}' $NAME2.txt > COSMOFILES-14bonds.txt
	awk '{ if ( $2 == "1" && $3 =="5" ) { print $0; }}' $NAME2.txt > COSMOFILES-15bonds.txt
        awk '{ if ( $2 == "1" && $3 =="6" ) { print $0; }}' $NAME2.txt > COSMOFILES-16bonds.txt
        awk '{ if ( $2 == "1" && $3 =="7" ) { print $0; }}' $NAME2.txt > COSMOFILES-17bonds.txt
        awk '{ if ( $2 == "1" && $3 =="8" ) { print $0; }}' $NAME2.txt > COSMOFILES-18bonds.txt
	awk '{ if ( $2 == "2" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-20bonds.txt
	awk '{ if ( $2 == "2" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-21bonds.txt
	awk '{ if ( $2 == "2" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-22bonds.txt
	awk '{ if ( $2 == "2" && $3 =="3" ) { print $0; }}' $NAME2.txt > COSMOFILES-23bonds.txt
	awk '{ if ( $2 == "2" && $3 =="4" ) { print $0; }}' $NAME2.txt > COSMOFILES-24bonds.txt	
        awk '{ if ( $2 == "2" && $3 =="5" ) { print $0; }}' $NAME2.txt > COSMOFILES-25bonds.txt
        awk '{ if ( $2 == "2" && $3 =="6" ) { print $0; }}' $NAME2.txt > COSMOFILES-26bonds.txt
        awk '{ if ( $2 == "2" && $3 =="7" ) { print $0; }}' $NAME2.txt > COSMOFILES-27bonds.txt
        awk '{ if ( $2 == "3" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-30bonds.txt
	awk '{ if ( $2 == "3" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-31bonds.txt
	awk '{ if ( $2 == "3" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-32bonds.txt
	awk '{ if ( $2 == "3" && $3 =="3" ) { print $0; }}' $NAME2.txt > COSMOFILES-33bonds.txt
        awk '{ if ( $2 == "3" && $3 =="4" ) { print $0; }}' $NAME2.txt > COSMOFILES-34bonds.txt
        awk '{ if ( $2 == "3" && $3 =="5" ) { print $0; }}' $NAME2.txt > COSMOFILES-35bonds.txt
        awk '{ if ( $2 == "3" && $3 =="6" ) { print $0; }}' $NAME2.txt > COSMOFILES-36bonds.txt
	awk '{ if ( $2 == "4" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-40bonds.txt
	awk '{ if ( $2 == "4" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-41bonds.txt
	awk '{ if ( $2 == "4" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-42bonds.txt
        awk '{ if ( $2 == "4" && $3 =="3" ) { print $0; }}' $NAME2.txt > COSMOFILES-43bonds.txt
        awk '{ if ( $2 == "4" && $3 =="4" ) { print $0; }}' $NAME2.txt > COSMOFILES-44bonds.txt
        awk '{ if ( $2 == "4" && $3 =="5" ) { print $0; }}' $NAME2.txt > COSMOFILES-45bonds.txt
        awk '{ if ( $2 == "5" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-50bonds.txt
	awk '{ if ( $2 == "5" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-51bonds.txt
        awk '{ if ( $2 == "5" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-52bonds.txt
        awk '{ if ( $2 == "5" && $3 =="3" ) { print $0; }}' $NAME2.txt > COSMOFILES-53bonds.txt
        awk '{ if ( $2 == "5" && $3 =="4" ) { print $0; }}' $NAME2.txt > COSMOFILES-54bonds.txt
        awk '{ if ( $2 == "6" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-60bonds.txt
        awk '{ if ( $2 == "6" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-61bonds.txt
        awk '{ if ( $2 == "6" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-62bonds.txt
        awk '{ if ( $2 == "6" && $3 =="3" ) { print $0; }}' $NAME2.txt > COSMOFILES-63bonds.txt
        awk '{ if ( $2 == "7" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-70bonds.txt
        awk '{ if ( $2 == "7" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-71bonds.txt
        awk '{ if ( $2 == "7" && $3 =="2" ) { print $0; }}' $NAME2.txt > COSMOFILES-72bonds.txt
        awk '{ if ( $2 == "8" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-80bonds.txt
        awk '{ if ( $2 == "8" && $3 =="1" ) { print $0; }}' $NAME2.txt > COSMOFILES-81bonds.txt
        awk '{ if ( $2 == "9" && $3 =="0" ) { print $0; }}' $NAME2.txt > COSMOFILES-90bonds.txt
	


	rm -f lt*bonds.txt
	echo "$NAME2 number of H-bond donors?"
	nhb=$1
	if [ $nhb == 0 ]
	then
		cp COSMOFILES-00bonds.txt lt0bonds.txt
	elif [ $nhb == 1 ]
	then
		cp COSMOFILES-00bonds.txt lt0bonds.txt
		cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
	
	elif [ $nhb == 2 ]
	then
		cp COSMOFILES-00bonds.txt lt0bonds.txt
		cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
		cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
	
	elif [ $nhb == 3 ]
	then
		cp COSMOFILES-00bonds.txt lt0bonds.txt
		cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
		cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
		cat lt2bonds.txt COSMOFILES-03bonds.txt COSMOFILES-12bonds.txt COSMOFILES-21bonds.txt COSMOFILES-30bonds.txt > lt3bonds.txt
	
	elif [ $nhb == 4 ]
	then
		cp COSMOFILES-00bonds.txt lt0bonds.txt
		cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
		cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
		cat lt2bonds.txt COSMOFILES-03bonds.txt COSMOFILES-12bonds.txt COSMOFILES-21bonds.txt COSMOFILES-30bonds.txt > lt3bonds.txt
		cat lt3bonds.txt COSMOFILES-04bonds.txt COSMOFILES-13bonds.txt COSMOFILES-22bonds.txt COSMOFILES-31bonds.txt COSMOFILES-40bonds.txt > lt4bonds.txt
	
	elif [ $nhb == 5 ]
	then
		cp COSMOFILES-00bonds.txt lt0bonds.txt
		cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
		cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
		cat lt2bonds.txt COSMOFILES-03bonds.txt COSMOFILES-12bonds.txt COSMOFILES-21bonds.txt COSMOFILES-30bonds.txt > lt3bonds.txt
		cat lt3bonds.txt COSMOFILES-04bonds.txt COSMOFILES-13bonds.txt COSMOFILES-22bonds.txt COSMOFILES-31bonds.txt COSMOFILES-40bonds.txt > lt4bonds.txt
		cat lt4bonds.txt COSMOFILES-05bonds.txt COSMOFILES-14bonds.txt COSMOFILES-23bonds.txt COSMOFILES-32bonds.txt COSMOFILES-41bonds.txt COSMOFILES-50bonds.txt > lt5bonds.txt
	
	elif [ $nhb == 6 ]
	then
		cp COSMOFILES-00bonds.txt lt0bonds.txt
		cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
		cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
		cat lt2bonds.txt COSMOFILES-03bonds.txt COSMOFILES-12bonds.txt COSMOFILES-21bonds.txt COSMOFILES-30bonds.txt > lt3bonds.txt
		cat lt3bonds.txt COSMOFILES-04bonds.txt COSMOFILES-13bonds.txt COSMOFILES-22bonds.txt COSMOFILES-31bonds.txt COSMOFILES-40bonds.txt > lt4bonds.txt
		cat lt4bonds.txt COSMOFILES-05bonds.txt COSMOFILES-14bonds.txt COSMOFILES-23bonds.txt COSMOFILES-32bonds.txt COSMOFILES-41bonds.txt COSMOFILES-50bonds.txt > lt5bonds.txt
		cat lt5bonds.txt COSMOFILES-06bonds.txt COSMOFILES-15bonds.txt COSMOFILES-24bonds.txt COSMOFILES-33bonds.txt COSMOFILES-42bonds.txt COSMOFILES-51bonds.txt COSMOFILES-60bonds.txt > lt6bonds.txt

        elif [ $nhb == 7 ]
        then
                cp COSMOFILES-00bonds.txt lt0bonds.txt
                cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
                cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
                cat lt2bonds.txt COSMOFILES-03bonds.txt COSMOFILES-12bonds.txt COSMOFILES-21bonds.txt COSMOFILES-30bonds.txt > lt3bonds.txt
                cat lt3bonds.txt COSMOFILES-04bonds.txt COSMOFILES-13bonds.txt COSMOFILES-22bonds.txt COSMOFILES-31bonds.txt COSMOFILES-40bonds.txt > lt4bonds.txt
                cat lt4bonds.txt COSMOFILES-05bonds.txt COSMOFILES-14bonds.txt COSMOFILES-23bonds.txt COSMOFILES-32bonds.txt COSMOFILES-41bonds.txt COSMOFILES-50bonds.txt > lt5bonds.txt
                cat lt5bonds.txt COSMOFILES-06bonds.txt COSMOFILES-15bonds.txt COSMOFILES-24bonds.txt COSMOFILES-33bonds.txt COSMOFILES-42bonds.txt COSMOFILES-51bonds.txt COSMOFILES-60bonds.txt > lt6bonds.txt
                cat lt6bonds.txt COSMOFILES-07bonds.txt COSMOFILES-16bonds.txt COSMOFILES-25bonds.txt COSMOFILES-34bonds.txt COSMOFILES-43bonds.txt COSMOFILES-52bonds.txt COSMOFILES-61bonds.txt COSMOFILES-70bonds.txt > lt6bonds.txt

        elif [ $nhb == 8 ]
        then
                cp COSMOFILES-00bonds.txt lt0bonds.txt
                cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
                cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
                cat lt2bonds.txt COSMOFILES-03bonds.txt COSMOFILES-12bonds.txt COSMOFILES-21bonds.txt COSMOFILES-30bonds.txt > lt3bonds.txt
                cat lt3bonds.txt COSMOFILES-04bonds.txt COSMOFILES-13bonds.txt COSMOFILES-22bonds.txt COSMOFILES-31bonds.txt COSMOFILES-40bonds.txt > lt4bonds.txt
                cat lt4bonds.txt COSMOFILES-05bonds.txt COSMOFILES-14bonds.txt COSMOFILES-23bonds.txt COSMOFILES-32bonds.txt COSMOFILES-41bonds.txt COSMOFILES-50bonds.txt > lt5bonds.txt
                cat lt5bonds.txt COSMOFILES-06bonds.txt COSMOFILES-15bonds.txt COSMOFILES-24bonds.txt COSMOFILES-33bonds.txt COSMOFILES-42bonds.txt COSMOFILES-51bonds.txt COSMOFILES-60bonds.txt > lt6bonds.txt
                cat lt6bonds.txt COSMOFILES-07bonds.txt COSMOFILES-16bonds.txt COSMOFILES-25bonds.txt COSMOFILES-34bonds.txt COSMOFILES-43bonds.txt COSMOFILES-52bonds.txt COSMOFILES-61bonds.txt COSMOFILES-70bonds.txt > lt6bonds.txt
                cat lt7bonds.txt COSMOFILES-08bonds.txt COSMOFILES-17bonds.txt COSMOFILES-26bonds.txt COSMOFILES-35bonds.txt COSMOFILES-44bonds.txt COSMOFILES-53bonds.txt COSMOFILES-62bonds.txt COSMOFILES-71bonds.txt COSMOFILES-80bonds.txt > lt6bonds.txt

        elif [ $nhb == 9 ]
        then
                cp COSMOFILES-00bonds.txt lt0bonds.txt
                cat lt0bonds.txt COSMOFILES-01bonds.txt COSMOFILES-10bonds.txt > lt1bonds.txt
                cat lt1bonds.txt COSMOFILES-02bonds.txt COSMOFILES-11bonds.txt COSMOFILES-20bonds.txt > lt2bonds.txt
                cat lt2bonds.txt COSMOFILES-03bonds.txt COSMOFILES-12bonds.txt COSMOFILES-21bonds.txt COSMOFILES-30bonds.txt > lt3bonds.txt
                cat lt3bonds.txt COSMOFILES-04bonds.txt COSMOFILES-13bonds.txt COSMOFILES-22bonds.txt COSMOFILES-31bonds.txt COSMOFILES-40bonds.txt > lt4bonds.txt
                cat lt4bonds.txt COSMOFILES-05bonds.txt COSMOFILES-14bonds.txt COSMOFILES-23bonds.txt COSMOFILES-32bonds.txt COSMOFILES-41bonds.txt COSMOFILES-50bonds.txt > lt5bonds.txt
                cat lt5bonds.txt COSMOFILES-06bonds.txt COSMOFILES-15bonds.txt COSMOFILES-24bonds.txt COSMOFILES-33bonds.txt COSMOFILES-42bonds.txt COSMOFILES-51bonds.txt COSMOFILES-60bonds.txt > lt6bonds.txt
                cat lt6bonds.txt COSMOFILES-07bonds.txt COSMOFILES-16bonds.txt COSMOFILES-25bonds.txt COSMOFILES-34bonds.txt COSMOFILES-43bonds.txt COSMOFILES-52bonds.txt COSMOFILES-61bonds.txt COSMOFILES-70bonds.txt > lt6bonds.txt
                cat lt7bonds.txt COSMOFILES-08bonds.txt COSMOFILES-17bonds.txt COSMOFILES-26bonds.txt COSMOFILES-35bonds.txt COSMOFILES-44bonds.txt COSMOFILES-53bonds.txt COSMOFILES-62bonds.txt COSMOFILES-71bonds.txt COSMOFILES-80bonds.txt > lt6bonds.txt
                cat lt8bonds.txt COSMOFILES-09bonds.txt COSMOFILES-18bonds.txt COSMOFILES-27bonds.txt COSMOFILES-36bonds.txt COSMOFILES-45bonds.txt COSMOFILES-54bonds.txt COSMOFILES-63bonds.txt COSMOFILES-72bonds.txt COSMOFILES-81bonds.txt COSMOFILES-90bonds.txt > lt6bonds.txt

	#add here if a molecule can have > 9 H-bond donors. Copy the previous and add one line for conformers with one more H-bond
	
	fi
        rm -f COSMOFILES-00bonds.txt COSMOFILES-01bonds.txt COSMOFILES-02bonds.txt COSMOFILES-03bonds.txt COSMOFILES-04bonds.txt COSMOFILES-05bonds.txt COSMOFILES-06bonds.txt COSMOFILES-07bonds.txt COSMOFILES-08bonds.txt COSMOFILES-09bonds.txt COSMOFILES-10bonds.txt COSMOFILES-11bonds.txt COSMOFILES-12bonds.txt COSMOFILES-13bonds.txt COSMOFILES-14bonds.txt COSMOFILES-15bonds.txt COSMOFILES-16bonds.txt COSMOFILES-17bonds.txt COSMOFILES-18bonds.txt COSMOFILES-20bonds.txt COSMOFILES-21bonds.txt COSMOFILES-22bonds.txt COSMOFILES-23bonds.txt COSMOFILES-24bonds.txt COSMOFILES-25bonds.txt COSMOFILES-26bonds.txt COSMOFILES-27bonds.txt COSMOFILES-30bonds.txt COSMOFILES-31bonds.txt COSMOFILES-32bonds.txt COSMOFILES-33bonds.txt COSMOFILES-34bonds.txt COSMOFILES-35bonds.txt COSMOFILES-36bonds.txt COSMOFILES-40bonds.txt COSMOFILES-41bonds.txt COSMOFILES-42bonds.txt COSMOFILES-43bonds.txt COSMOFILES-44bonds.txt COSMOFILES-45bonds.txt COSMOFILES-50bonds.txt COSMOFILES-51bonds.txt COSMOFILES-52bonds.txt COSMOFILES-53bonds.txt COSMOFILES-54bonds.txt COSMOFILES-60bonds.txt COSMOFILES-61bonds.txt COSMOFILES-62bonds.txt COSMOFILES-63bonds.txt COSMOFILES-70bonds.txt COSMOFILES-71bonds.txt COSMOFILES-72bonds.txt COSMOFILES-80bonds.txt COSMOFILES-81bonds.txt COSMOFILES-90bonds.txt

for i in lt*bonds.txt
do
	nlines=$(echo $(wc -l $i) | cut -d' ' -f1)
	n=$(( nconfs < nlines ? nconfs : nlines ))
	if [ $nlines != "0" ]
	then
		NAME=`echo "$i" | cut -d'.' -f1`
		
		#sort by filename
		sed -i 's/_c/_c /g' $i
		sed -i 's/.cosmo/ .cosmo/g' $i
		sort -k 2 -n < $i > temp.txt
		sed -i 's/_c /_c/g' temp.txt
		sed -i 's/ .cosmo/.cosmo/g' temp.txt
		 				
		head -$n temp.txt > COSMOFILES-$i			#take first n confs
		sed -i 's/.cosmo/.cosmo #/g' COSMOFILES-$i		#add comment after each line
		sed -i '1 s/.cosmo/.cosmo [/g' COSMOFILES-$i		#add [ after the first cosmoname
		sed -i "$n s/.cosmo/.cosmo ]/g" COSMOFILES-$i		#add ] after the last cosmoname
		rm -f temp.txt
		#write .inp file COSMOTHERM INSTALLATION FOLDER HERE
		 echo "ctd=BP_TZVPD_FINE_21.ctd CDIR=/projappl/project_2003525/beselvit/Apps/COSMOtherm2021/COSMOtherm/CTDATA-FILES LDIR=/projappl/project_2003525/beselvit/Apps/COSMOtherm2021/licensefiles
		fdir=$(pwd) wtln unit notempty ehfile
		! Vapor pressure calculation
		f = \$DATABASE=COSMOFILES-$i
		pvap tk=298.15 x={1}
		 
		" > $NAME.inp
		
		# start the calculation
		/projappl/hvehkama/beselvit/Apps/COSMOtherm2021/COSMOtherm/BIN-LINUX/cosmotherm $NAME.inp -n 4 # maybe give 4 cores here
              
              ##############################              
              # CHECK FOR FAULTY CONFORMERS (If there are faulty conformers
              ############################## 
                # CHECK FOR NOT CONNECTED MOLECULES
                num=$(echo $NAME | sed 's/[^0-9]*//g')
                faultyConfs=$(grep 'COSMOperce WARNING: atoms not connected' lt$num"bonds.out" |awk ' { print $6 }') 2> /dev/null
                faultyConfs=$(echo $faultyConfs | sed 's/_gas//g')
                for faultyConf in $faultyConfs; do
                        sed -i "/$faultyConf/d" COSMOFILES-lt$num"bonds.txt"
                        sed -i "/$faultyConf/d" COSMOFILES.txt
                        #rm $faultyConf.* 2> /dev/null

                        echo $faultyConf
                       if [ "$(cat COSMOFILES-lt$num"bonds.txt" |wc -l)" == "0" ]; then
                                # There is no conformers left
                                rm lt$num"*"
                        rm COSMOFILES-lt$num"bonds.txt"
                        elif [ "$(cat COSMOFILES-lt$num"bonds.txt" |wc -l)" == "1" ]; then
                                if grep -q '\[' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "s/\[/\] \[/g" COSMOFILES-lt$num"bonds.txt"
                                elif grep -q '\]' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "s/\]/\] \[/g" COSMOFILES-lt$num"bonds.txt"
                                fi
                        else
                                if ! grep -q '\[' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "1 s/#/\[ #/" COSMOFILES-lt$num"bonds.txt"
                                elif ! grep -q '\]' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "$ s/#/\] #/" COSMOFILES-lt$num"bonds.txt"
                                fi
                        fi
                done

                # CHECK FOR GASPHASE MISSING
                # For .gasphase missing
                for faultyConf in `grep -B 1 'Gas phase energy file could not be found' lt$num"bonds.out" | grep cosmo | awk '{print $11}' | sed ';s/.*\///g'`; do
                        echo $faultyConf
                        sed -i "/$faultyConf/d" COSMOFILES-lt$num"bonds.txt"
                        sed -i "/$faultyConf/d" COSMOFILES.txt
                        #rm $faultyConf.* 2> /dev/null
                        if [ "$(cat COSMOFILES-lt$num"bonds.txt" |wc -l)" == "0" ]; then
                                # There is no conformers left
                                rm lt$num"*"
                                rm COSMOFILES-lt$num"bonds.txt"
                        elif [ "$(cat COSMOFILES-lt$num"bonds.txt" |wc -l)" == "1" ]; then
                                if grep -q '\[' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "s/\[/\] \[/g" COSMOFILES-lt$num"bonds.txt"
                                elif grep -q '\]' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "s/\]/\] \[/g" COSMOFILES-lt$num"bonds.txt"
                                fi
                        else
                                if ! grep -q '\[' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "1 s/#/\[ #/" COSMOFILES-lt$num"bonds.txt"
                                elif ! grep -q '\]' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "$ s/#/\] #/" COSMOFILES-lt$num"bonds.txt"
                                fi
                        fi
                done
                if [ ! -z "$faultyConf" ]; then
                        echo One cosmotherm restart due to faulty conformers
                        /projappl/hvehkama/beselvit/Apps/COSMOtherm2021/COSMOtherm/BIN-LINUX/cosmotherm $NAME.inp -n 4      
                fi
                 
                if grep -q 'WARNING: Gas phase energy is lower than COSMO energy for' $NAME".out"; then
                        echo Some conformers are faulty! This is gonna remove them from the pSat calc
                                # Remove each faulty conformer from COSMOFILES-lt*bonds.txt
                        for faultyConf in `grep 'WARNING: Gas phase energy is lower than COSMO energy for' $NAME".out" | awk '{print $11}'`; do
                                        echo $faultyConf
                                        sed -i "/$faultyConf/d" "COSMOFILES-"$NAME".txt"
                        done
                        if [ "$(cat COSMOFILES-lt$num"bonds.txt" |wc -l)" == "0" ]; then
                                # There is no conformers left
                                rm lt$num"*"
                                rm COSMOFILES-lt$num"bonds.txt"
                        elif [ "$(cat COSMOFILES-lt$num"bonds.txt" |wc -l)" == "1" ]; then
                                if grep -q '\[' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "s/\[/\] \[/g" COSMOFILES-lt$num"bonds.txt"
                                elif grep -q '\]' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "s/\]/\] \[/g" COSMOFILES-lt$num"bonds.txt"
                                fi
                        else
                                if ! grep -q '\[' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "1 s/#/\[ #/" COSMOFILES-lt$num"bonds.txt"
                                elif ! grep -q '\]' COSMOFILES-lt$num"bonds.txt"; then
                                        sed -i "$ s/#/\] #/" COSMOFILES-lt$num"bonds.txt"
                                fi
                        fi
 
                                /projappl/hvehkama/beselvit/Apps/COSMOtherm2021/COSMOtherm/BIN-LINUX/cosmotherm $NAME.inp -n 4
                        if [ ! -s "COSMOFILES-"$NAME".txt" ]; then
                                rm *$NAME*
                        fi
                fi	
                ##################################################################################################################
	fi
done
	rm -f lt*bonds.txt
done
		
