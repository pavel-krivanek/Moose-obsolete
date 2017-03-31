private
errorInvalidDefaultAttributeValue: aDefaultValue
	XMLValidationException
		formatSignal:
			'Invalid default value "{1}" in declaration for ',
			'attribute "{2}" of element <3>'
		with: aDefaultValue
		with: self attribute
		with: self element