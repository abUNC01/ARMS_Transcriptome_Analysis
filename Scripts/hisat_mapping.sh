#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=12g
#SBATCH -t 2-00:00:00

module load hisat2

hisat2 -x ./genome -U ./MS001_1.fastq.gz -S ./hisat_out_sam/MS001_1.sam
hisat2 -x ./genome -U ./MS001_2.fastq.gz -S ./hisat_out_sam/MS001_2.sam
hisat2 -x ./genome -U ./MS001_3.fastq.gz -S ./hisat_out_sam/MS001_3.sam
hisat2 -x ./genome -U ./MS001_4.fastq.gz -S ./hisat_out_sam/MS001_4.sam
hisat2 -x ./genome -U ./MS001_5.fastq.gz -S ./hisat_out_sam/MS001_5.sam
hisat2 -x ./genome -U ./MS001_6.fastq.gz -S ./hisat_out_sam/MS001_6.sam
hisat2 -x ./genome -U ./MS001_7.fastq.gz -S ./hisat_out_sam/MS001_7.sam
hisat2 -x ./genome -U ./MS001_8.fastq.gz -S ./hisat_out_sam/MS001_8.sam
hisat2 -x ./genome -U ./MS001_9.fastq.gz -S ./hisat_out_sam/MS001_9.sam
hisat2 -x ./genome -U ./MS001_10.fastq.gz -S ./hisat_out_sam/MS001_10.sam
hisat2 -x ./genome -U ./MS001_11.fastq.gz -S ./hisat_out_sam/MS001_11.sam
hisat2 -x ./genome -U ./MS001_12.fastq.gz -S ./hisat_out_sam/MS001_12.sam
