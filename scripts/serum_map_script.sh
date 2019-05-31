#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J veanes_rna_serum_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

##Serum RNA Mapping

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9

#Indexing the large reference genome
#Then mapping the serum RNA genome assembly

bwa index -p rna_serum_mapping_1 /home/margus/paper1_analysis_files/pilon_files/pilon_pacbio_illumina_combined_genome.fasta
bwa mem -M rna_serum_mapping_1 /proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_1.fastq.gz /proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_2.fastq.gz | samtools sort -o bwa_output_rna_serum_map_1.bam

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9

bwa index -p rna_serum_mapping_2 /home/margus/paper1_analysis_files/pilon_files/pilon_pacbio_illumina_combined_genome.fasta
bwa mem -M rna_serum_mapping_2 /proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_1.fastq.gz /proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_2.fastq.gz | samtools sort -o bwa_output_rna_serum_map_2.bam

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9

bwa index -p rna_serum_mapping_3 /home/margus/paper1_analysis_files/pilon_files/pilon_pacbio_illumina_combined_genome.fasta
bwa mem -M rna_serum_mapping_3 /proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_1.fastq.gz /proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_2.fastq.gz | samtools sort -o bwa_output_rna_serum_map_3.bam

