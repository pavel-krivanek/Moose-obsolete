sorting
sort: aSortBlock
	super sort: aSortBlock.

	self cachedElements sort: aSortBlock.
	self cachedElementsByName valuesDo: [:each |
		each isCollection
			ifTrue: [each sort: aSortBlock]].