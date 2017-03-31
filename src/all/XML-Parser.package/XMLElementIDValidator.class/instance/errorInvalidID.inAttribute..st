private
errorInvalidID: anID inAttribute: anAttribute
	XMLValidationException
		formatSignal: 'Invalid element ID value "{1}" in attribute "{2}"'
		with: anID
		with: anAttribute