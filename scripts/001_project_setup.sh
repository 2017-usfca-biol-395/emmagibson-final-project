#!/bin/bash

# test script to make a project folder with data and a blank readme
# Emma Gibson egibson@usfca.edu
# November 8, 2017

# make project folders
echo "creating folder structure..."
mkdir data data/raw_data data/metadata scripts tests output output/tables output/figures output/filtered
echo "created folder structure"

# to make the readme in the new folder
echo "creating readme..."
touch README.txt
