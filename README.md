# Genome_Analysis_Paper1
Genome Analysis Course data for paper 1, Margus Veanes
# Project Plan
#Genomics

1)Genome assembly via longread PacBio data (via Canu)

2)Correct longread PacBio genome with Illumina short reads (align Illumina to PacBio via BWA, SAMtools for format conversion, and finally     feed into Pilon for a consensus genome)

3)Quality Check of Pilon generated Genome (via Quast)

4)Annotate Genome (via Prokka/EGGnog)

5)Synteny Comparison with related Genome (via Artemis ACT)

#Transcriptomics

6)Reads preprocessing and quality checking (via Trimmomatic and FastQC before and after)

7)Mapping reads to the genome (via samtoops for format conversion, feeding into BWA)

8)Counting the genome reads (via HTSeq)

9)Differential Expression Analysis (via DESeq2 in Rmarkdown)

#Report

10)Answer questions regarding software and the undergone analysis (see attached final_report.PDF)
