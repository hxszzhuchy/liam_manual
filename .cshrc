
## this is copy from Gary ##

#================================
# Gary Linux Setting BEGIN
#================================

#### Source the global env settings
source /data/env/csh_all
source /data/env/csh_eda

#### Locally setting for Synopsys tools
setenv VERDI_HOME "/data/eda/Verdi_vO-2018.09-SP2-5"
setenv VCS_HOME "/data/eda/vcs-mx_vO-2018.09-SP2-5"
setenv UVM_HOME "$VCS_HOME/etc/uvm-1.2"
setenv SNPS_SIM_DEFAULT_GUI "verdi"
setenv DESIGNWARE_HOME "/data/eda/DesignWare_N-2017.12"
########################################################################
if $?LD_LIBRARY_PATH then
   setenv LD_LIBRARY_PATH "/usr/local/share/ueda/lib:${LD_LIBRARY_PATH}"
else
   setenv LD_LIBRARY_PATH "/usr/local/share/ueda/lib"
endif
setenv UEDA_HOME "/usr/local/share/ueda"
########################################################################
#### Set ENV for Arteris FlexNoC
setenv LM_LICENSE_FILE "${LM_LICENSE_FILE}:27000@10.1.57.13"
setenv ARTERISD_LICENSE_FILE "27000@10.1.57.13"
########################################################################
# Don't source FlexNoC tcshrc directly, cause this will lead plenty of 
# troubles when using python.
# In stead, let's use a cshell script written by Harris from Arteris
########################################################################
###Do Not uncomment####setenv FLEXNOC_HOME "/data/eda/Arteris/FlexNoC-4.7.0-2"
###Do Not uncomment####source $FLEXNOC_HOME/etc/tcshrc
setenv TOOL_SCRIPT "~/HarrisShell"
setenv PATH        "${TOOL_SCRIPT}:${PATH}"
########################################################################
#### Set ENV for Magillem IPD
setenv LM_LICENSE_FILE "${LM_LICENSE_FILE}:7000@10.1.57.13"
setenv IPD_HOME "/data/eda/Magillem/Magillem_Magillem_5.14.0"
setenv PATH        "${PATH}:${IPD_HOME}/bin"
########################################################################
#### Set ENV for Arteris CodaCache
setenv CC_HOME "/data/eda/Arteris/CodaCache-v1.6.1-linux-x64"
setenv  PATH  "${CC_HOME}:${PATH}"
########################################################################
#### Set ENV for Arteris Ncore3
setenv MAESTRO_DIR "/data/eda/Arteris/Ncore_3.2.0_RC9"
setenv MAESTRO_TCLLIB "${MAESTRO_DIR}/maestro-doc/examples/tcllib"
setenv MAESTRO_PERF_MDL "${MAESTRO_DIR}/performance-modeling"
setenv MAESTRO_HOME "${MAESTRO_DIR}/maestro-client"
setenv LD_LIBRARY_PATH "${MAESTRO_HOME}/lib64:${MAESTRO_PERF_MDL}/lib64:${LD_LIBRARY_PATH}"
setenv  PATH  "${MAESTRO_DIR}/bin:${MAESTRO_DIR}/maestro-server:${MAESTRO_PERF_MDL}/bin:${PATH}"
########################################################################
#### Set ENV for Arteris FlexEdit
setenv FLEXEDIT_HOME "/data/eda/Arteris/FlexEdit_0.9.6"
setenv  PATH  "${FLEXEDIT_HOME}:${PATH}"
########################################################################

#### project specified
alias prj "cd /data/Proj/Proj_101"

#================================
# Gary Linux Setting END
#================================



#================================
# Liam Linux Setting BEGIN
#================================

umask 002
set autolist
set autoexpand
unset autologout
setenv TMOUT 10000
set COMPANY = TRANSCHIP


###########    prompt    ##############
alias setprompt 'set prompt = "[Liam.Zhu* $PWD]$ "'
setprompt

###########     alias    ##############
alias cd 'chdir \!* && setprompt && ls -X'

alias u 'cd ../'
alias uu 'cd ../../'
alias uuu 'cd ../../../'
alias uuuu 'cd ../../../../'

alias so source ~/.cshrc
#a g gvim
#use gvim with python3 instead to support verilog addons
alias g "gvim"
alias gr 'gvim -R'
alias gm 'gvim -M'
alias gd 'gvimdiff'
alias pdf "evince "
alias h history
alias cp cp -i
alias mv mv -i
alias rm rm -i
alias ls ls --color=auto
alias la ls -A --color=auto
alias ll ls -l --color=auto
alias home "cd ~"

# self-use --> bak the interested files / directory to ~/bak dir
alias bakit ~/.bakit

########## use arm-gcc   #############
setenv PATH "${PATH}: /data/gcc/gcc-arm-none-eabi-10.3-2021.10/bin"

#================================
# Liam Linux Setting END 
#================================


