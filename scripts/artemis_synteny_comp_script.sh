#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J veanes1_synteny_comp
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

module load bioinfo-tools
module load blast/2.7.1+

makeblastdb -in /home/margus/reference.fasta -dbtype 'nucl' -out db/ref_db -parse_sequids
blastn -db /home/margus/reference.fasta -query /home/margus/paper1_analysis_files/pilon_files/pilon_pacbio_illumina_combined_genome.fasta -outfmt 6 > efaecium_synteny.act
