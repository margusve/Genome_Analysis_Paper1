#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:30:00
#SBATCH -J veanes1_rnaseq_trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user Margus.Veanes.4784@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic

trimmomatic PE \
/proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797969_pass_1.fastq.gz \
/proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797969_pass_2.fastq.gz \
RNASeq1_BH_corrected_forward_paired.fq.gz RNASeq1_BH_corrected_forward_unpaired.fq.gz RNASeq1_Serum_corrected_reverse_paired.fq.gz RNASeq1_BH_corrected_reverse_unpaired.fq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

trimmomatic PE \
/proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797970_pass_1.fastq.gz \
/proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797970_pass_2.fastq.gz \
RNASeq2_BH_corrected_forward_paired.fq.gz RNASeq2_BH_corrected_forward_unpaired.fq.gz RNASeq2_Serum_corrected_reverse_paired.fq.gz RNASeq2_BH_corrected_reverse_unpaired.fq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

trimmomatic PE \
/proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797971_pass_1.fastq.gz \
/proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/untrimmed/ERR1797971_pass_2.fastq.gz \
RNASeq3_BH_corrected_forward_paired.fq.gz RNASeq3_BH_corrected_forward_unpaired.fq.gz RNASeq3_Serum_corrected_reverse_paired.fq.gz RNASeq3_BH_corrected_reverse_unpaired.fq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36


