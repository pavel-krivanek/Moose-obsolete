private
errorUndeclaredNotation: aNotation inEntity: anEntity
	XMLValidationException
		formatSignal: 'Undeclared notation "{1}" referenced by <!ENTITY {2} ...> declaration'
		with: aNotation
		with: anEntity