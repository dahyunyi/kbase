#!/bin/sh 

# Create HTML for quality control of normalization of FA images.

# Parameters: 
#<directory> is the full path to the folder where FA, MD and B0 images are be stored, all in a SUBJECT folder. Inside the FA and B0 folders we will have the FA and B0 FA-driven individual templates created previously. We will normalize these templates to MNI152 template

#<directory>
#  |
#  |
#  |_SUBJECT0001
#     |
#     |___>FA: 0001_FA.nii.gz, 0002_FA.nii.gz, etc. (Multiple sessions per subject)
#     |
#     |___>MD: 0001_MD.nii.gz, 0002_MD.nii.gz, etc.
#     |
#     |___>B0: 0001_B0.nii.gz, 0002_B0.nii.gz, etc.


directory=$1

cd $directory

for subj in `ls -d SUBJECT*`; do #list of subject folders
(

	cd ${directory}/${subj}
	
	cd FA

	list=`ls *ero_padded.nii.gz`	

	cd ..

	for i in $list; do
	(

	echo ${directory}/${subj}/${i:0:16}_FAoverMNI152_T1.gif >> ${directory}/FAoverMNI152.txt

	) 
	done
) 
done


ROOT=${directory}
#HTTP="/"
filename="check_FAoverMNI152.html" 
OUTPUT=${directory}/$filename

cd ${directory}
FA_images=$(<"FAoverMNI152.txt")

path=$ROOT
#echo "<UL>" > $OUTPUT
#  for i in $images
#    echo "<IMG SRC="$i" >>" $OUTPUT
#  done
# echo "  </UL>" >> $OUTPUT


echo "<!DOCTYPE html>" > $OUTPUT
echo "<html>" >> $OUTPUT
echo "<body>" >> $OUTPUT

echo "<div style='text-align:center;'>" >> $OUTPUT

for i in $FA_images; do
(
echo "<p> <b> ${i} </b> </p>" >> $OUTPUT
echo "<img src=$i alt=$i><br>" >> $OUTPUT
echo "<p> </p>" >> $OUTPUT
)
done
echo "</div>" >> $OUTPUT

echo "</body>" >> $OUTPUT
echo "</html>" >> $OUTPUT

