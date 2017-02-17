application
convertMatrixRowwise: aMatrix
	
	^aMatrix species withAll: (MalMappedMatrix on: aMatrix rowMap: self)