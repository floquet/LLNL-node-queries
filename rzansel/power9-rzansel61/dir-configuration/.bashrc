#! /bin/bash

##-*- Mode: bash -*-
##---------------------------------------------------------------------------##
## File  : ~/.bashrc
## Date  : October 9, 2018
## Author: Daniel Topa
## Note  : Copyright (C) 2018, Los Alamos National Security, LLC.
##         All rights are reserved.
##
##  Bash configuration file upon bash shell startup
##---------------------------------------------------------------------------##

printf '%s\n' "**  **  **  $(date) ${BASH_SOURCE[0]}"

# # I D E N T I F Y
export bash_file=".bashrc"
export host_name="rzansel"

# # D A T A  L O C K E R S
export      data="/usr/workspace/wsrzc/${USER}"
export   scratch="/p/gpfs1/${USER}"

# # B A S I C  D I R E C T O R I E S
export        repos="${data}/repos"
export       github="${repos}/Github"
export bash_scripts="${github}/LLNL-bash"
export         core="${bash_scripts}/core-scripts"
export node_queries="${github}/node-queries"

export mySpack="${scratch}/spack"

export gcc_system_compiler="gcc@4.9.3"

# **  **  **  **  **  **  **  **

source "${core}/platforms.sh" # identify platform
source "${core}/master.sh"

# **  **  **  **  **  **  **  **

alias  gohypre="cd ${mySpack}/spack.power9.hypre;  pwd"
alias gozoltan="cd ${mySpack}/spack.power9.zoltan; pwd"

alias quick="source ${lap_scripts}/develop/patch-zoltan-config.sh"



