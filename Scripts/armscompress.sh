#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=10g
#SBATCH -t 1-00:00:00

tar -czvf ARMS2021RNAseq.tar.gz arms_rnaseq
