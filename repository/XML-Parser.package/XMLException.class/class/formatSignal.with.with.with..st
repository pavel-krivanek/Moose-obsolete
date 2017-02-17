signalling
formatSignal: aString with: aFirstValue with: aSecondValue with: aThirdValue
	^ self
		formatSignal: aString
		withArguments: (Array with: aFirstValue with: aSecondValue with: aThirdValue)