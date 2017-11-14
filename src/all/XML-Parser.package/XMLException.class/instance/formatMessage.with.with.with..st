accessing
formatMessage: aString with: aFirstValue with: aSecondValue with: aThirdValue
	self
		formatMessage: aString
		withArguments:
			(Array
				with: aFirstValue
				with: aSecondValue
				with: aThirdValue)