#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=10g
#SBATCH -t 02:00:00

module add fastqc

fastqc MS001_1.fastq -o ./fastQC_output_2
fastqc MS001_9.fastq -o ./fastQC_output_2
fastqc MS001_11.fastq -o ./fastQC_output_2
fastqc MS001_12.fastq -o ./fastQC_output_2
