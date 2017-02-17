compressing
checkForSequence
	self allChildrenDo: [:each | self checkChildrenForSequence: (each children) ].