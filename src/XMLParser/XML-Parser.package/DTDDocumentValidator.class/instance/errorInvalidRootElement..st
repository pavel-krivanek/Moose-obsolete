private
errorInvalidRootElement: anElement
	XMLValidationException
		formatSignal:
			'Root element must be <{1}> according to DOCTYPE declaration, not <{2}>'
		with: self doctypeDefinition root
		with: anElement