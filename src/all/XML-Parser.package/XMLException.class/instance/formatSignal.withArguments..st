signaling
formatSignal: aString withArguments: anArray
	self
		formatMessage: aString
		withArguments: anArray.
	^ self signal.