removing
removeFunctionNamed: aFunctionName ifAbsent: aBlock
	^ functionsByName
		removeKey: aFunctionName
		ifAbsent: aBlock