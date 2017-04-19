errors
errorTerminatingUnstartedElement: anElement
	self
		formatParseError: 'End tag </{1}> with no corresponding <{1}> start tag'
		with: anElement