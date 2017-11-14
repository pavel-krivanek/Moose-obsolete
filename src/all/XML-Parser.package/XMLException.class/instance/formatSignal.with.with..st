signaling
formatSignal: aString with: aFirstValue with: aSecondValue
	self
		formatMessage: aString
		with: aFirstValue
		with: aSecondValue.
	^ self signal.