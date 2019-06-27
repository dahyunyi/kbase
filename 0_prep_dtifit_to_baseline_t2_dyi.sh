#!/bin/bash
##for SubjID in $@; do 
for SubjID in $(cat subjid_list.txt); do
	flirt -in ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_S0.nii.gz -ref ~/Documents/DYI_project_processing/DTI/V0/${SubjID}_dtifit_V0_S0.nii.gz -out ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_S0.nii.gz;
	flirt -in ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_FA.nii.gz -ref ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_S0.nii.gz -out ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_FA.nii.gz;
	flirt -in ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_MD.nii.gz -ref ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_S0.nii.gz -out ~/Documents/DYI_project_processing/DTI/V2/${SubjID}_dtifit_V2_MD.nii.gz;
done