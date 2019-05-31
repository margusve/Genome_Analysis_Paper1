#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J veanes_count_rna_serum
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

##Counting Serum Mapped RNA

# Load modules

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view /home/margus/paper1_analysis_files/rna_mapping/serum/bwa_output_rna_serum_map_1.bam | htseq-count --format bam --type CDS bwa_output_rna_serum_map_1.bam /home/margus/paper1_analysis_files/PROKKA_05072019_PacBio_Illumina_Corrected/annotated_combined_alignment.gtf > rna_serum_counts_1.txt


module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view /home/margus/paper1_analysis_files/rna_mapping/serum/bwa_output_rna_serum_map_2.bam | htseq-count --format bam --type CDS bwa_output_rna_serum_map_2.bam /home/margus/paper1_analysis_files/PROKKA_05072019_PacBio_Illumina_Corrected/annotated_combined_alignment.gtf > rna_serum_counts_2.txt


module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view /home/margus/paper1_analysis_files/rna_mapping/serum/bwa_output_rna_serum_map_3.bam | htseq-count --format bam --type CDS bwa_output_rna_serum_map_3.bam /home/margus/paper1_analysis_files/PROKKA_05072019_PacBio_Illumina_Corrected/annotated_combined_alignment.gtf > rna_serum_counts_3.txt
