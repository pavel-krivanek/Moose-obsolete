private 
errorEnumerationContainsDuplicateValues
	XMLValidationException
		formatSignal:
			'Declaration for enumeration attribute "{1}" of element ',
			'<{2}> contains duplicate values'
		with: self attribute
		with: self element