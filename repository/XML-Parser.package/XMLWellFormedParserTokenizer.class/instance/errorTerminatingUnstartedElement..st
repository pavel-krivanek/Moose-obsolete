errors
errorTerminatingUnstartedElement: anElement
	self
		formatParseError: 'End </{1}> tag with no corresponding start <{1}> tag'
		with: anElement