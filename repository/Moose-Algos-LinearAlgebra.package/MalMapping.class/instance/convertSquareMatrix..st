application
convertSquareMatrix: aMatrix
	
	^aMatrix species withMatrix: (MalMappedMatrix on: aMatrix map: self)