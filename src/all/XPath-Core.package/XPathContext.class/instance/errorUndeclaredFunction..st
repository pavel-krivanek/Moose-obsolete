private
errorUndeclaredFunction: aFunctionName
	XPathUndeclaredFunctionException
		formatSignal: 'Undeclared function {1}()'
		with: aFunctionName