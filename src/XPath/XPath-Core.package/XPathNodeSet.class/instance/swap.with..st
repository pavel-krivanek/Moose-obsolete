accessing
swap: aFirstIndex with: aSecondIndex
	super
		swap: aFirstIndex
		with: aSecondIndex.
	self sortOrder: nil.