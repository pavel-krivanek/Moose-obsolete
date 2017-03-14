private
errorMultipleDeclarationsForElement: aName
	XMLValidationException
		formatSignal: 'Multiple declarations for <{1}> element'
		with: aName