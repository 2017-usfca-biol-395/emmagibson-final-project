#!/bin/bash

# script to download raw sequence data
# Emma Gibson egibson@usfca.edu
# November 8, 2017

# download the fastq into the proper folder
# raw data is from Jangi et al. 2015 Nature paper
# "Alterations of the human gut microbiome in multiple sclerosis"
# project number on NCBI database: PRJNA321051
export PATH=$PATH:/c/Users/throw/Desktop/sratoolkit.2.8.2-1-win64/bin

for SRA_number in $(cut -f 13 data/metadata/SraRunTable.txt | tail -n +2)
do
	fastq-dump -v $SRA_number -O data/raw_data
	echo "Dumping $SRA_number into raw data folder"
done
