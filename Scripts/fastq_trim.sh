#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -n 5
#SBATCH --mem=10g
#SBATCH -t 05:00:00

module load fastx_toolkit

fastq_quality_trimmer -l 75 -t 20 -i MS001_2_S2_R1_001.fastq -o MS001_2.fastq -v -z
fastq_quality_trimmer -l 75 -t 20 -i MS001_3_S3_R1_001.fastq -o MS001_3.fastq -v -z
fastq_quality_trimmer -l 75 -t 20 -i MS001_4_S4_R1_001.fastq -o MS001_4.fastq -v -z
fastq_quality_trimmer -l 75 -t 20 -i MS001_5_S5_R1_001.fastq -o MS001_5.fastq -v -z
fastq_quality_trimmer -l 75 -t 20 -i MS001_6_S6_R1_001.fastq -o MS001_6.fastq -v -z
fastq_quality_trimmer -l 75 -t 20 -i MS001_7_S7_R1_001.fastq -o MS001_7.fastq -v -z
fastq_quality_trimmer -l 75 -t 20 -i MS001_8_S8_R1_001.fastq -o MS001_8.fastq -v -z
fastq_quality_trimmer -l 75 -t 20 -i MS001_9_S9_R1_001.fastq -o MS001_9.fastq -v -z
