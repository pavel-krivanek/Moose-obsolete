signaling
formatSignal: aString with: aFirstValue
	self
		formatMessage: aString
		with: aFirstValue.
	^ self signal.