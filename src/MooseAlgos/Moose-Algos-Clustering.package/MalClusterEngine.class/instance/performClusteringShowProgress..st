clustering
performClusteringShowProgress: linkageSelector
	
	MooseCustomTask
		runWithProgress:[self performClustering: linkageSelector]
		description:('Clustering <1p> items, please wait.'
				expandMacrosWith: distanceMatrix columnSize)
		length: ( distanceMatrix columnSize * (distanceMatrix columnSize - 1) / 2)