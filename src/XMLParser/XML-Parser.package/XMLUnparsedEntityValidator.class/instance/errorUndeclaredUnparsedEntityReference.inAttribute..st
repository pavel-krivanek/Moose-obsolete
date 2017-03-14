private
errorUndeclaredUnparsedEntityReference: anEntity inAttribute: anAttriubute
	XMLValidationException
		formatSignal: 'Undeclared unparsed entity "{1}" in "{2}" attribute'
		with: anEntity
		with: anAttriubute