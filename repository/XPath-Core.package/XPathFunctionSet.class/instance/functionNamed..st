accessing
functionNamed: aFunctionName
	^ self
		functionNamed: aFunctionName
		ifAbsent: [nil]