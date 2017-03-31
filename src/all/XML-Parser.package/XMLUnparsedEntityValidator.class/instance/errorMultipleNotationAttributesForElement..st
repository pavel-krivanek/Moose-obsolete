private
errorMultipleNotationAttributesForElement: anElement
	XMLValidationException
		formatSignal: 'Element <{1}> has multiple NOTATION list attributes'
		with: anElement