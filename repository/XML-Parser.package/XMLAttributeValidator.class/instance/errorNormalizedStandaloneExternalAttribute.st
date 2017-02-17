private
errorNormalizedStandaloneExternalAttribute
	XMLValidationException
		formatSignal:
			'Externally defined attribute "{1}" of element <{2}> required ',
			'further value normalizaiton in standalone="yes" document'
		with: self attribute
		with: self element