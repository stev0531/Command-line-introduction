#!/bin/bash
#Extracts and uncompresses the NthPrime.tgz file 
#and places the files in the specified directory.
#Compiles and runs the files in the tar file with
#the specified number to give the Prime of that number.

#Elizabeth Stevens and Mark Schauer
#University of Minnesota Morris
#September 2018


num=$1
tar_file=$2

tar zxf NthPrime.tgz --directory $tar_file
cd $tar_file/NthPrime/
gcc main.c nth_prime.h nth_prime.c -o NthPrime

./NthPrime $num
