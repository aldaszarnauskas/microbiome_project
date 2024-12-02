#Download classifier
wget -O "silva-138-99-nb-classifier.qza" "https://data.qiime2.org/classifiers/sklearn-1.4.2/silva/silva-138-99-nb-classifier.qza"

#Generate an OTU table
qiime feature-classifier classify-sklearn \
  --i-classifier silva-138-99-nb-classifier.qza \
  --i-reads rep-seqs-dada2.qza \
  --o-classification taxonomy.qza

#Export taxonomy info in .tsv format
qiime tools export
  --input-path taxonomy.qza \
  --output-path exported-feature-table  
