initialize-release
initialize: distanceMatrix
	
	partialColumns := distanceMatrix copyClusteringData
		collect: [:each | MalClusteringVector withAll: each].
	value := foundA0 := foundB0 := nil.
	clusters := distanceMatrix items
		collect: [:item | MalDendrogram with: item].
	indices := (1 to: partialColumns size) asArray.
	1
		to: partialColumns size
		do: [:n | (partialColumns at: n) unsetAt: n]