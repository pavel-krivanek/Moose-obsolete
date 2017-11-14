signaling
formatSignal: aString with: aFirstValue with: aSecondValue with: aThirdValue with: aFourthValue
	self
		formatMessage: aString
		with: aFirstValue
		with: aSecondValue
		with: aThirdValue
		with: aFourthValue.
	^ self signal.