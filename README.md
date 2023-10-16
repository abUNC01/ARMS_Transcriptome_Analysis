# ARMS_Transcriptome_Analysis
Analysis for "Next-generation Tumor-homing Induced Neural Stem Cells as an Adjuvant to Radiation for the Treatment of Metastatic Lung Cancer" 

This repo catalogs the scripts used in the UNC HCP Reasearch Computing Core The actual data is not stored here as I am not the owner, but I do have ownership of the analysis pipeline.

1) The data received from the sequencing core was Illumina hi-seq in fastq format
2) Used fastqc program to assess the quality of the fastq files. There was a quality issue with some of the reads above the position bp 75.
3) Files `fastq_trim.sh` and `fasq_trim2.sh` >> fastq_quality_trimmer` from the `fastx_toolkit` to trim fastq score down to a bp length of 75 if the fastq individual base score about them was less that 20.
4) File `arms_qc.sh` and `arms_qc2_trim.sh` >> resubmitted the files that were altered significatly after trimming the bp in excess of 75bp from step #3 above for `fastqc` analysis. *Note: There are two files because some trimmed files were not moved into the `./trimmed_fastq` folder for whatever reason so `arms_qc2_trim.sh` took care of the remaining trimmed files.
5) File `hisat_mapping.sh` >> mapped the trimmed fastq files to the hisat-indexed hg38 genome. output to .sam files.
6) File `htseq_merge.sh` >> used the `htseq-count` file from `htseq-count` module to merge all the hisat-mapped-trimmed.sam files
7)  File `armscompress.sh` >>  `tar` and `zip` compressed the entire `ARMS_rnaseq` folder with all of the analysis to move to long term tape storage at the institution.
