#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J veanes1_bwa_pacbio_illumina_align
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa
module load samtools/1.9

bwa index -p enterococci_pacbio_index /home/margus/paper1_analysis_files/canu_genome_assembly/Canu_Assembly_Output_Pacbio/Enterococci.contigs.fasta
bwa mem -M enterococci_pacbio_index /proj/g2019003/nobackup/private/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz \
/proj/g2019003/nobackup/private/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz > pacbio_illumina_aligned.sam \
| samtools sort -o pacbio_illumina_aligned.bam

 

