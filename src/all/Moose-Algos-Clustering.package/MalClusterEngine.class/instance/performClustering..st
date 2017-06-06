clustering
performClustering: linkageSelector
	^ dendrogram := (MalClusteringData onDistanceSquare: distanceMatrix) performClustering: linkageSelector