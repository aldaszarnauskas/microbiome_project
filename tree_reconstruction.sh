#Create a phylogenetic tree
qiime phylogeny align-to-tree-mafft-fasttree \
	--p-n-threads "auto" \
  --i-sequences rep-seqs-dada2.qza \
  --output-dir phylogeny-align-to-tree-mafft-fasttree
  
#Export the phylogenetic tree
qiime tools export  \
	--input-path phylogeny-align-to-tree-mafft-fasttree/tree.qza  \
	--output-path exported-phylogeny-align-to-tree-mafft-fasttree
