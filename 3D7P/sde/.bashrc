# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias mkae='make'
alias amke='make'
alias mpstat='mpstat -P ALL 1'

# ICC15
#source /opt/intel/composer_xe_2015.2.164/bin/iccvars.sh intel64
#PATH=$HOME/bin:$HOME/.install/bin:/home/charles/likwid-3.1.3:/home/charles/intel/impi/5.0.3.048/bin64:$PATH
# Add gcc-4.8.2 to PATH
#PATH=$HOME/bin:$HOME/.install/bin:$HOME/.gcc-4.8.2/bin:/home/charles/likwid-3.1.3:/home/charles/intel/impi/5.0.3.048/bin64:$PATH

#PATH=$HOME/intel/bin:$HOME/bin:$HOME/.install/bin:$HOME/.gcc-4.8.2/bin:/home/charles/likwid-3.1.3:/home/charles/intel/impi/5.0.3.048/bin64:$PATH

# ICC16
source /home/charles/intel/bin/iccvars.sh intel64
# Add gcc-4.8.2 to PATH
#PATH=$HOME/intel/bin:$HOME/bin:$HOME/.gcc-4.8.2/bin:/home/charles/likwid-3.1.3:/home/charles/intel/compilers_and_libraries_2016.0.056/linux/mpi/bin64:$PATH

PATH=$HOME/intel/bin:$HOME/bin:$HOME/likwid-3.1.3:/home/charles/intel/compilers_and_libraries_2016.0.056/linux/mpi/bin64:$PATH
#Add Vtune 2016 to Path
#PATH=$HOME/intel/bin:$HOME/bin:$HOME/intel/vtune_amplifier_xe_2016/bin64:$HOME/likwid-3.1.3:/home/charles/intel/compilers_and_libraries_2016.0.056/linux/mpi/bin64:$PATH

# Add IACA binary to PATH
PATH=$PATH:$HOME/iaca-lin64/bin:$HOME/sde

export PATH





# FOR IACA (Updated GCC & GLIB)
#export C_INCLUDE_PATH=$HOME/iaca-lin64/include:$HOME/.gcc-4.8.2/include:$HOME/.install/include:$HOME/likwid/usr/local/include:$HOME/likwid/usr/local/include/likwid:$C_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH=$HOME/iaca-lin64/include:$HOME/.gcc-4.8.2/include:$HOME/.install/include:$HOME/likwid/usr/local/include:$HOME/likwid/usr/local/include/likwid:$CPLUS_INCLUDE_PATH
#export LD_LIBRARY_PATH=$HOME/.glibc-2.14/lib:$HOME/.gcc-4.8.2/lib64:$HOME/.install/lib:$HOME/likwid/usr/local/lib:$HOME/iaca-lin64/lib:$LD_LIBRARY_PATH

# FOR Intel Parallel Studio (Amplxe-gui & Amplxe-cl)
export C_INCLUDE_PATH=$HOME/iaca-lin64/include:$HOME/.install/include:$HOME/likwid/usr/local/include:$HOME/likwid/usr/local/include/likwid:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$HOME/iaca-lin64/include:$HOME/.install/include:$HOME/likwid/usr/local/include:$HOME/likwid/usr/local/include/likwid:$CPLUS_INCLUDE_PATH
export LD_LIBRARY_PATH=$HOME/.install/lib:$HOME/likwid/usr/local/lib:$HOME/iaca-lin64/lib:$LD_LIBRARY_PATH

export LC_ALL=C
