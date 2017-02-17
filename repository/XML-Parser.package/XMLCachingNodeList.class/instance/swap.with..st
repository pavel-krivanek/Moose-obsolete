accessing
swap: aFirstIndex with: aSecondIndex
	super swap: aFirstIndex with: aSecondIndex.

	((self at: aFirstIndex) isElement
		or: [(self at: aSecondIndex) isElement])
		ifTrue: [self rebuildCachedElements].