#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J veanes1_pilon_pacbio_illumina
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

# Load modules
module load bioinfo-tools
module load Pilon

pilon --genome /home/margus/paper1_analysis_files/canu_genome_assembly_files/Canu_Assembly_Output_Pacbio/Enterococci.contigs.fasta \
--frags /home/margus/paper1_analysis_files/bwa_samtools_files/pacbio_illumina_aligned.bam \
--outdir pilon_files --output pilon_pacbio_illumina_combined_genome
