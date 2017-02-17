private
errorInvalidXMLSpaceAttributeDeclaration
	XMLValidationException
		formatSignal:
			'Attribute "xml:space" of element <{1}> must be declared as ',
			'an enumeration type with "default" and/or "preserve" values'
		with: self element