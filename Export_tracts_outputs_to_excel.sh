#!/bin/sh

# Created by Dahyun Yi, PhD, to combine DTI processing extracted output into a single file (2016/06/27)

directory=$1

cd $directory

for subj in $(ls *_thr25_1mm_extract.txt); do
	
	fname=$(basename -- "$subj")
	data=$(<$subj)
	echo $fname $data >> dd.txt

done 

sed 's/ \+/,/g' dd.txt > data_tracts_combined.csv;