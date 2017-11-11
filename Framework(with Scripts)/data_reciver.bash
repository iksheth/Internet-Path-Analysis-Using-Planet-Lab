#!/bin/bash

declare -a arr=("TA1" "TA2" "TA3" "TP1" "TP2" "TP3" "UU1" "UU2" "UU3" "UU4" "UC1" "UC2")

#======================== UN Nodes ===============
TA1_UN=albany_ccnS17_5@planetlab2.cs.uml.edu
TA2_UN=albany_ccnS17_5@ricepl-1.cs.rice.edu
TA3_UN=albany_ccnS17_5@planetlab-2.cmcl.cs.cmu.edu
TP1_UN=albany_ccnS17_5@planetlab5.eecs.umich.edu
TP2_UN=albany_ccnS17_5@planetlab2.utdallas.edu
TP3_UN=albany_ccnS17_5@planetlab-3.cmcl.cs.cmu.edu
UU1_UN=albany_ccnS17_5@salt.planetlab.cs.umd.edu
UU2_UN=albany_ccnS17_5@planetlab2.cs.purdue.edu
UC1_UN=albany_ccnS17_5@planetlab2.cs.ucla.edu
UC2_UN=albany_ccnS17_5@planetlab1.cs.purdue.edu
UU3_UN=albany_ccnS17_5@earth.cs.brown.edu
UU4_UN=albany_ccnS17_5@node2.planetlab.mathcs.emory.edu

#======================== PN Nodes ===============
TA1_PN=albany_ccnS17_5@planetlab3.cesnet.cz
TA2_PN=albany_ccnS17_5@planetlab1.cs.aueb.gr
TA3_PN=albany_ccnS17_5@planetlab4.mini.pw.edu.pl
TP1_PN=albany_ccnS17_5@planetlab-n2.wand.net.nz
TP2_PN=albany_ccnS17_5@planetlab-n1.wand.net.nz
TP3_PN=albany_ccnS17_5@planetlab2.cs.otago.ac.nz
UU1_PN=albany_ccnS17_5@planetlab1.unr.edu
UU2_PN=albany_ccnS17_5@planetlab1.cs.uml.edu
UC1_PN=albany_ccnS17_5@plonk.cs.uwaterloo.ca
UC2_PN=albany_ccnS17_5@planetlab1.cs.ubc.ca
UU3_PN=albany_ccnS17_5@planetlab1.temple.edu
UU4_PN=albany_ccnS17_5@planetlab4.cs.uoregon.edu



main_core='Main_Core'


#================== Get Date ======================
    v_date=$(date +"%m_%d_%Y")
	v_time=$(date +"%H_%M")

#================ Make That Date Dir ==============
    dir_name=${v_time}@${v_date}
    dir_loc="./archive"

    t_dir=${dir_loc}"/"${dir_name}
    mkdir $t_dir



for i in "${arr[@]}"
do

    Pair_Code=${i}
    echo "======================= $Pair_Code ============================="

    #======== Reading Data ============

    T_UN=$Pair_Code'_UN'
    T_PN=$Pair_Code'_PN'

    UN=${!T_UN}
    PN=${!T_PN}

    echo "Input is $Pair_Code"
    echo ${UN}
    echo ${PN}

    #========== Making Dirs ==============
    mkdir -p ${t_dir}"/"$Pair_Code"/UN" ${t_dir}"/"$Pair_Code"/PN"




    scp -r ${UN}:karansheth/data/ ${t_dir}"/"$Pair_Code"/UN/"
    scp -r ${PN}:karansheth/data/ ${t_dir}"/"$Pair_Code"/PN/"








done
