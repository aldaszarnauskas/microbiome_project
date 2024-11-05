#!/bash/bin
RAW=/home/aldas/bioinformatics/microbiome_project/raw_reads/


for r1 in ls $RAW*_1*.fastq.gz; 
do r2=${r1/_1/_2};

cutadapt -j 0 -o /dev/null $r1 >> QC_format.txt
cutadapt -j 0 -o /dev/null $r2 >> QC_format.txt
cutadapt -j 0 -o /dev/null -p /dev/null $r1 $r2 >> QC_pairing.txt
done
