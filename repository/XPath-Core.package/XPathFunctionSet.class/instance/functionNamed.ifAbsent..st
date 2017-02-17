accessing
functionNamed: aFunctionName ifAbsent: aBlock
	^ functionsByName
		at: aFunctionName
		ifAbsent: aBlock