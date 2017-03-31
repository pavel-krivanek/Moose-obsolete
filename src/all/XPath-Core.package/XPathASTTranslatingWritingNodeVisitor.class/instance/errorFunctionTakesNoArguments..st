private
errorFunctionTakesNoArguments: aFunctionName
	XPathArgumentNumberException
		formatSignal: 'The {1}() function takes no arguments'
		with: aFunctionName