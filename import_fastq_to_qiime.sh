for r1 in $(ls *_1*); 
do path_to_file="$PWD/"; 
r=${r1/_1.fastq.gz/}; 
r2=${r1/_1/_2};
 echo -e "$r\t$path_to_file$r1\t$path_to_file$r2" >> ../manifest.tsv; done

#Import fastq files into qiime2 artefact. Qiime2 artefact contains all files and details associated with the file in one file
qiime tools import 
 --type 'SampleData[PairedEndSequencesWithQuality]'
 --input-path manifest.tsv 
 --output-path paired-end-demux.qza 
 --input-format PairedEndFastqManifestPhred33V2
