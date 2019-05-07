#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J veanes1_canu_genome_prokka_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka

prokka /home/margus/paper1_analysis_files/pilon_files/pilon_pacbio_illumina_combined_genome.fasta
