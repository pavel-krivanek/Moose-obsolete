private
errorUndeclaredNotation: aNotation inAttribute: anAttribute
	XMLValidationException
		formatSignal: 'Undeclared notation "{1}" in NOTATION (...) attribute "{2}"'
		with: aNotation
		with: anAttribute