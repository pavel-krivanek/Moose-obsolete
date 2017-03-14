algorithm
orderDendrogramLeaves
	
	| clusty |
	clusty := MalClusterEngine with: elements.
	clusty hierarchicalClusteringUsing: #averageLinkage.
	^clusty dendrogram orderLeafs asArray