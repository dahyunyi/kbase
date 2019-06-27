#!/bin/sh

# Created by Dahyun Yi, PhD, to combine DTI processing extracted output into a single file (2016/06/27)

directory=$1

cd $directory

for subj in $(ls *_1mm_extract.txt); do
	
	fname=$(basename -- "$subj")
	data=$(<$subj)
	echo $fname $data >> d.txt

done 

sed 's/ \+/,/g' d.txt > data_combined.csv;