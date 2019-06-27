#!/bin/bash
cd ${directory}
find . -type f -name '*_V0_FA_warped2MNI152_T1_1mm.nii.gz' -exec cp {} ~/Documents/DYI_project_processing/DTI/dti_post_ants_final/FA/v0/ \; 
find . -type f -name '*_V0_MD_warped2MNI152_T1_1mm.nii.gz' -exec cp {} ~/Documents/DYI_project_processing/DTI/dti_post_ants_final/MD/v0/ \; 
find . -type f -name '*_V2_FA_warped2MNI152_T1_1mm.nii.gz' -exec cp {} ~/Documents/DYI_project_processing/DTI/dti_post_ants_final/FA/v2/ \; 
find . -type f -name '*_V2_MD_warped2MNI152_T1_1mm.nii.gz' -exec cp {} ~/Documents/DYI_project_processing/DTI/dti_post_ants_final/MD/v2/ \; 