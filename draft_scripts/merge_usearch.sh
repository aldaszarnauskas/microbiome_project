#!/bin/bash/
TRIMMED=/home/aldas/bioinformatics/microbiome_project/trimmed_reads/
MERGED=/home/aldas/bioinformatics/microbiome_project/merged_reads/

usearch=/home/aldas/Documents/usearch8.1.1861_i86linux32

for r1 in ${TRIMMED}*; 
do

r2=${r1/_1/_2};

r=${r1/_1/};

sample=${r1/_1.fastq/};
sample=${sample}.
sample=${sample/$TRIMMED"trimmed_"/};

merged=${r/$TRIMMED"trimmed_"/$MERGED"merged_"};

$usearch -fastq_mergepairs $r1 -reverse $r2 -fastqout $merged -relabel $sample;
done
