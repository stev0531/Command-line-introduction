#!/bin/bash

name=$1
scratch=$2

tar zxf $name --directory $scratch
tar zcf cleaned_$name $scratch
