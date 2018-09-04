#!/bin/bash

name=$1
scratch=$2

tar zxf $name --directory $scratch
here=$(pwd)
cd $scratch
cd little_dir
rm `grep -l DELETE *`
cd $here
tar zcf cleaned_$name $scratch
