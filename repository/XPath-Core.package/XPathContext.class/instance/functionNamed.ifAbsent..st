accessing
functionNamed: aFunctionName ifAbsent: aBlock
	^ self functions 
		functionNamed: aFunctionName
		ifAbsent: aBlock