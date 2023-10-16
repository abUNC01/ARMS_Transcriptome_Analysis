#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=10g
#SBATCH -t 02:00:00

module add fastqc

fastqc ./trimmed_fastq	*.fastq.gz -o ./fastQC_output
