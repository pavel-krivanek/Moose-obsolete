accessing
defaultFunctions
	^ defaultFunctions
		ifNil: [defaultFunctions := XPathFunctionSet default]