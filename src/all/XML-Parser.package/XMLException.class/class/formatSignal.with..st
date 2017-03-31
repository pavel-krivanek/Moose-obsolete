signalling
formatSignal: aString with: aFirstValue
	^ self
		formatSignal: aString
		withArguments: (Array with: aFirstValue)