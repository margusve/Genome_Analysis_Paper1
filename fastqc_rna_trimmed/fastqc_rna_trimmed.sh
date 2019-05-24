#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:15:00
#SBATCH -J veanes_fastq_rna_serum_trimmed
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

module load bioinfo-tools
module load java
module load FastQC/0.11.5

fastqc /home/margus/paper1_analysis_files/trimmomatic_rnaseq_correction/trimmomatic_output_files/*paired* -o /home/margus/paper1_analysis_files/fastqc_rna_trimmed

