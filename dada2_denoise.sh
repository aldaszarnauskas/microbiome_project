#Denoise fastq files with dada2
qiime dada2 denoise-paired \
  --i-demultiplexed-seqs 'demux-trimmed.qza' \
  --p-trim-left-f 0 \
  --p-trim-left-r 0 \
  --p-trunc-len-f 234 \
  --p-trunc-len-r 184 \
  --o-representative-sequences rep-seqs-dada2.qza \
  --o-table table-dada2.qza \
  --o-denoising-stats dada2-stats.qza \
  --p-n-threads 0
  
 #Generate statistics from the denoising step
qiime metadata tabulate \
	--m-input-file dada2-stats.qza \
	--o-visualization dada2-stats-summ.qzv
