#!/bash/bin

RAW=/home/aldas/bioinformatics/microbiome_project/raw_reads/
TRIMMED=/home/aldas/bioinformatics/microbiome_project/trimmed_reads/
error_rate=0.2
cores=0 #automatically detects number of available cores

for r1 in ls $RAW*_1*.fastq.gz; 
do r2=${r1/_1/_2};

r1_trimmed=${r1/$RAW/$TRIMMED"trimmed_"}
r2_trimmed=${r2/$RAW/$TRIMMED"trimmed_"}

cutadapt -j $cores -e $error_rate -g CCTACGGGNGGCWGCAG -a GACTACHVGGGTATCTAATCC -o $r1_trimmed -p $r2_trimmed $r1 $r2  >> trimming_report.txt
done

