private
errorUndeclaredVariable: aVariableName
	XPathUndeclaredVariableException
		formatSignal: 'Undeclared variable reference ${1}'
		with: aVariableName