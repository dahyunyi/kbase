#!/bin/bash

#Call: bash JHU_labels_atlas_extract_1mm_dyi.sh <directory>
#<directory> is the full path to the folder where final FA or MD images are stored.
#fslmeants -i BR0003_dtifit_V0_FA_warped2MNI152_T1_1mm.nii.gz --label=JHU-ICBM-labels-1mm.nii.gz -o BR0003_V0_FA_1mm_extract.txt

directory=$1

JHU_labels_1mm_atlas=/Users/snuhldy3/Documents/Atlas_mask_brain/JHU_DTI-based_white-matter_atlases/JHU-ICBM-labels-1mm.nii.gz

cd $directory

for subj in $(ls *.nii.gz); do

	fslmeants -i ${subj} --label=$JHU_labels_1mm_atlas -o ${subj:0:19}_1mm_extract.txt

done


#ls *.nii.gz > filelist.txt
#for subj in $(cat filelist.txt); do