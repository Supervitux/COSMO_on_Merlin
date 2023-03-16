#
#	This script executes Turbomole on the RAMDISK
#
# Get Arguments
name=$1
wrkdir_turbo=$2


# Enter RAMDISK
cd /dev/shm/
mkdir $name
cd $name
ls -ld ./* >> $wrkdir_turbo/MY_B3-B4_COSMOCONF.out

# Run TURBOMOLE
module load turbomole/7.5
/appl/soft/chem/turbomole/7.5.1/TURBOMOLE/calculate_3.0_linux64/calculate -l $wrkdir_turbo/mylist-cosmo -m BP-TZVP-GAS -din $wrkdir_turbo/Results_of_BP-TZVPD-FINE-COSMO -np 32
sed -i 's/.cosmo/.energy/g' $wrkdir_turbo/mylist-cosmo
/appl/soft/chem/turbomole/7.5.1/TURBOMOLE/calculate_3.0_linux64/calculate -l $wrkdir_turbo/mylist-cosmo -m BP-TZVPD-GAS-SP -din EnergyfilesBP-TZVP -np 32

# COPY OUTPUT / ZIP
cp -R EnergyfilesBP-TZVPD-FINE-COSMO-SP $wrkdir_turbo/

cd ..
rm -R $name

