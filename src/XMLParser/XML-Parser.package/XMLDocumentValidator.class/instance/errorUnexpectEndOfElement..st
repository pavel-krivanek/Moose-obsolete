private
errorUnexpectEndOfElement: anElement
	XMLValidationException
		formatSignal: 'Element <{1}> terminated prematurely'
		with: anElement