#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:15:00
#SBATCH -J veanes_fastq_illumina
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

module load bioinfo-tools
module load java
module load FastQC/0.11.5

fastqc /proj/g2019003/nobackup/private/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz -o /home/margus/paper1_analysis_files/fastqc_illumina
fastqc /proj/g2019003/nobackup/private/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz -o /home/margus/paper1_analysis_files/fastqc_illumina

