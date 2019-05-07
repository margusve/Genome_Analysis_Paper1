#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J veanes1_canu_assembly_quast_evaluation
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

quast.py /home/margus/paper1_analysis_files/pilon_files/pilon_pacbio_illumina_combined_genome.fasta \
-R /home/margus/paper1_analysis_files/canu_genome_assembly_files/Canu_Assembly_Output_Pacbio/reference.fasta
