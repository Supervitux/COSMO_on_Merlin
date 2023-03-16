#
#	This script executes COSMOconf on a RAMDISK
#
# Enter the RAMDISK of the supercomputer cluster, because too many files are created
name=$1
wrkdir=$2

cd /dev/shm/
mkdir $name
cd $name
echo "On Ramddisk?" >> $wrkdir/MY_B3-B4_COSMOCONF.out
ls -ld ./* >> $wrkdir/MY_B3-B4_COSMOCONF.out

# Copy input to ramdisk
cp $wrkdir/*.sdf .
cp $wrkdir/mylist .

# Run COSMOconf
echo "This bash wrap executes cosmoconf"
module load turbomole/7.5
export PATH=$TURBODIR/bin/`$TURBODIR/scripts/sysname`:$PATH
/usr/bin/perl /projappl/project_2003525/beselvit/Apps/COSMOconf_Linux64_4_3_COMMAND_LINE/cosmoconf.pl -l ./mylist -m FINE-COSMO-with-sampling -djob /projappl/project_2003525/beselvit/Apps/COSMOconf_Linux64_4_3_COMMAND_LINE/JOB_TEMPLATES/Archive -np 64

# Postprocessing
NAME=$3
cd Results_of_BP-TZVPD-FINE-COSMO       #go to result folder
ls *.cosmo > filenames.txt              #making a list of .cosmo filenames
sed -i 's/_c/_c /g' filenames.txt       #sorting based on the conformer number and saving to $NAME.list
sed -i 's/.cosmo/ .cosmo/g' filenames.txt
sort -k 2 -n < filenames.txt > $NAME.list
sed -i 's/_c /_c/g' $NAME.list
sed -i 's/ .cosmo/.cosmo/g' $NAME.list
rm -f filenames.txt
cp $NAME.list $NAME.txt

sed -i 's/.cosmo/.cosmo -1/g' *-anion.txt               #if the cosmo file is named *-anion.sdf, a negative charge is added 
sed -i 's/.cosmo/.cosmo +1/g' *-cation.txt              #if the cosmo file is named *-cation.sdf, a positive charge is added 
mv $NAME.txt ../mylist-cosmo
cd ..

cp -R Results_of_BP-TZVPD-FINE-COSMO $wrkdir
cp -R mylist* $wrkdir

cd ..
rm -R $name
