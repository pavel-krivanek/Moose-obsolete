actions
performSeriation
	| newOrder |
	dendrogram := (MalClusterEngine withDistanceMatrix: self) averageLinkage.
	newOrder := self dendrogram orderLeafs asArray.
	self rearrange: newOrder