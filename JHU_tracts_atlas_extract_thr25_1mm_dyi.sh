#!/bin/bash

#Call: bash JHU_tracts_atlas_extract_thr25_1mm_dyi.sh <directory>
#<directory> is the full path to the folder where final FA or MD images are stored.
#fslmeants -i BR0003_dtifit_V0_FA_warped2MNI152_T1_1mm.nii.gz --label=JHU-ICBM-labels-1mm.nii.gz -o BR0003_V0_FA_1mm_extract.txt

directory=$1

JHU_tracts_thr25_1mm_atlas=/Users/snuhldy3/Documents/Atlas_mask_brain/JHU_DTI-based_white-matter_atlases/JHU-ICBM-tracts-maxprob-thr25-1mm.nii.gz

cd $directory

for subj in $(ls *.nii.gz); do

	fslmeants -i ${subj} --label=$JHU_tracts_thr25_1mm_atlas -o ${subj:0:19}_tracts_thr25_1mm_extract.txt

done
