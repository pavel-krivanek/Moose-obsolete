compressing
checkForNonContiguousSequence
	self allChildrenDo: [:each | each checkChildrenForNonContiguousSequence: (each children) ].