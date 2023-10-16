#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -n 5
#SBATCH --mem=10g
#SBATCH -t 05:00:00

module load fastx_toolkit

fastq_quality_trimmer -l 75 -t 20 -i MS001_12_S12_R1_001.fastq -o MS001_12.fastq -v
fastq_quality_trimmer -l 75 -t 20 -i MS001_1_S1_R1_001.fastq -o MS001_1.fastq -v
fastq_quality_trimmer -l 75 -t 20 -i MS001_11_S11_R1_001.fastq -o MS001_11.fastq -v
fastq_quality_trimmer -l 75 -t 20 -i MS001_9_S9_R1_001.fastq -o MS001_9.fastq -v
