private
errorMultipleIDAttributesForElement: anElement
	XMLValidationException
		formatSignal: 'Element <{1}> has multiple ID attributes'
		with: anElement