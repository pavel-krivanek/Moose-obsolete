application
convertMatrixColumnwise: aMatrix
	
	^aMatrix species withMatrix: (MalMappedMatrix on: aMatrix columnMap: self)