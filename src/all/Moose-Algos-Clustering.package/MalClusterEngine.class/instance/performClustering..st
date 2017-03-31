clustering
performClustering: linkageSelector
	
	| data |
	data := MalClusteringData onDistanceSquare: distanceMatrix.
	data performClustering: linkageSelector.
	^dendrogram := data dendrogram