actions
performSeriation
	
	| clusty newOrder |
	clusty := MalClusterEngine withDistanceMatrix: self.
	clusty performClusteringShowProgress: #averageLinkage.
	dendrogram := clusty dendrogram.
	newOrder := self dendrogram orderLeafs asArray.
	self rearrange: newOrder