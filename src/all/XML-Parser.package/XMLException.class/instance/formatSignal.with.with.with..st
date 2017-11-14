signaling
formatSignal: aString with: aFirstValue with: aSecondValue with: aThirdValue
	self
		formatMessage: aString
		with: aFirstValue
		with: aSecondValue
		with: aThirdValue.
	^ self signal.