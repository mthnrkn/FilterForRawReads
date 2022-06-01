#!/bin/bash

IN_DIR=$1
n=0

for i in ./$IN_DIR/*.fastq; do
 while read -r line; do
  n=$(($n+1))
  echo $line
  cat *.fastq | seqkit grep -s -i -p $line -o "$n".fastq
 done < $IN_DIR

done
