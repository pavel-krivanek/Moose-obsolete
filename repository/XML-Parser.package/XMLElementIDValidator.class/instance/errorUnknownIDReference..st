private
errorUnknownIDReference: anID
	XMLValidationException
		formatSignal: 'Reference to unknown element ID "{1}"'
		with: anID