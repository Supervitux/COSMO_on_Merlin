#!/bin/bash
#
#	Creates a file (NAME-confs.txt) that contains the number of intra-molecular H-bonds 
#	in each COSMO conformer
#

input=$(echo $1)
cosmofiles=$(echo $2)
nhb=$(echo $3)
rm -f $input-confs.txt
printf "COSMOfile Number_of_full_H-bonds Number_of_partial_bonds\n" >> $input-confs.txt
i=0 #full bonds
j=0 #partial bonds


#Read lines after 'HB2012 iatm' and stop at empty line
awk '/HB2012 iatm/,/^$/' $input.out > output.txt
#Remove lines where 2nd column is number 6 and 6th column is not < 0
awk '{ if ( $2 != "6" && $6 < 0 ) { print $0; }}' output.txt > output2.txt 


#find full bonds
cp $cosmofiles.txt temp2.txt
while [ -s output2.txt ]
do
 read -r line < output2.txt
 if [ -n "$line" ]
  then
   line2=`echo "$line" | awk ' {print $9}'`
   line3=$(echo "$line2*1000" | bc -l)
   line4=`echo "$line3" | cut -d'.' -f1`
   if [ "$line4" -ne "4894" ]			#this number might change in different versions of COSMOtherm (version 18 5268)
   then 
    j=$((j+1)) #partial h-bond
   else
    i=$((i+1)) #no h-bond
   fi
 else
  read -r confname < temp2.txt
  confname2=`echo "$confname" | cut -d' ' -f1`
  sed -i '1d' temp2.txt
  printf "$confname2 $((nhb-i-j)) $j\n" >> $input-confs.txt
  i=0
  j=0
fi
sed -i '1d' output2.txt

done < output2.txt

rm -f temp2.txt output2.txt output.txt
