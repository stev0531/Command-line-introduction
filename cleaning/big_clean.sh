#!/bin/bash

# Elizabeth Stevens and Mark Schauer
# U of M Morris
# Fall 2018

# Variable names
name=$1
scratch=$2
here=$(pwd)

# Extracts the given tar file into the scratch directory
tar -zxf $name --directory $scratch
cd $scratch
# Variable created to only fetch the first portion of the name given above
noext=`basename $name ".tgz"`
# Enter that directory with the variable created above
cd $noext
# Use a remove function to delete files with DELETE in them
rm `grep -l DELETE *`
cd ..
# Recompress the directory
tar -zcf $here/cleaned_$name $noext
