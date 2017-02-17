private
errorDuplicateID: anID inAttribute: anAttribute
	XMLValidationException
		formatSignal: 'Duplicate element ID "{1}" used in attribute "{2}"'
		with: anID
		with: anAttribute