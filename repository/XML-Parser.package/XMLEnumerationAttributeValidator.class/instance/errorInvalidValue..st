private 
errorInvalidValue: aValue
	XMLValidationException
		formatSignal: 'Invalid value "{1}" for attribute "{2}" of element <{3}>'
		with: aValue
		with: self attribute
		with: self element