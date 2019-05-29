#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J veanes1_synteny_comp
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

module load bioinfo-tools
module load blast/2.7.1+

makeblastdb -in /home/margus/Genome_Analysis_Paper1/synteny_sequence.fasta  -dbtype 'nucl' -out db/ref_db -parse_seqids
blastn -db /domus/h1/margus/db/ref_db -query /home/margus/Genome_Analysis_Paper1/pilon_files/pilon_pacbio_illumina_combined_genome.fasta -outfmt 6 > combined_genome_vs_synteny_ref.act
