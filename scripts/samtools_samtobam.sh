#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J veanes1_samtools
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools/1.9

samtools view -bS /home/margus/paper1_analysis_files/bwa_samtools_files/pacbio_illumina_aligned.sam > pacbio_illumina_aligned.bam
samtools sort /home/margus/paper1_analysis_files/bwa_samtools_files/pacbio_illumina_aligned.sam > pacbio_illumina_aligned.bam
samtools index pacbio_illumina_aligned.bam

