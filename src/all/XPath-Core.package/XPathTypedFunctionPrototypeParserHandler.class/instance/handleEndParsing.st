handling
handleEndParsing
	self parsingResult:
		(XPathFunctionPrototype
			returnType: returnType
			name: functionName
			minArguments: minArguments
			maxArguments: maxArguments
			argumentTypes: argumentTypes)