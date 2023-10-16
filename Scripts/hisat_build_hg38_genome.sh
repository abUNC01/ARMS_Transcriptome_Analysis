#!/bin/bash/

#SBATCH -p general
#SBATCH -N 1
#SBATCH -n 5
#SBATCH --mem=8g
#SBATCH -t 01:00:00

module load hisat2

hisat2-build ./hg38.fa ./hg38_genome_built
