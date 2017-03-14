signalling
formatSignal: aString with: aFirstValue with: aSecondValue
	^ self
		formatSignal: aString
		withArguments: (Array with: aFirstValue with: aSecondValue)