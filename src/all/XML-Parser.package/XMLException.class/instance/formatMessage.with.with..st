accessing
formatMessage: aString with: aFirstValue with: aSecondValue
	self
		formatMessage: aString
		withArguments:
			(Array
				with: aFirstValue
				with: aSecondValue)