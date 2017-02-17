dendrogram clustering
orderParts: aCollectionOfParts

	| vectors engine clusters partVectors |
	aCollectionOfParts ifEmpty: [^aCollectionOfParts].
	partVectors :=  aCollectionOfParts  collect: [:eachPart |
		MalSimilarityItem with: eachPart
			andAll: (self properties collect: [:eachProp | self numberOfElementsWithProperty: eachProp inPart: eachPart]) ].
	engine := MalClusterEngine with: partVectors.
	engine hierarchicalClusteringUsing: #averageLinkage.
	partVectors := engine dendrogram orderLeafs collect: [:each | each item].
	^ partVectors
	