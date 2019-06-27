#!/bin/sh 
# Edited by Dahyun Yi, PhD, 2019/06/18 to adapt to the KBASE file system

# Call: bash 2_Create_Multi-modal_file.sh <directory>

# This script will create the txt file required to supply it to ANTs-MultivariateTemplateCreation algorithm for the creation of two templates: an FA template 
# (created by driving template creation using FA images) and a B0 template (created by applying the transformations to B0, to have an accompanying B0 template). 
# This could be done with MD as well, by adding MD images to the txt file.


directory=$1

cd $directory

for subj in `ls -d SUBJECT*`; do #list of subject folders
(

	cd ${directory}/${subj}/FA

	list=`ls *ero_padded.nii.gz`	

	for i in $list; do
	(
		echo "${directory}/${subj}/FA/${i} , ${directory}/${subj}/B0/${i:0:16}_S0_ero_padded.nii.gz ">> ${directory}/${subj}/Multi-modal_images.txt #one file per subject

	)
	done

)done