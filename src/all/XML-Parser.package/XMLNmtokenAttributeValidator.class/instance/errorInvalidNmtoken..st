private
errorInvalidNmtoken: aName
	XMLValidationException
		formatSignal: 'Invalid Nmtoken name "{1}" in attribute "{2}" of element <{3}>'
		with: aName
		with: self attribute
		with: self element