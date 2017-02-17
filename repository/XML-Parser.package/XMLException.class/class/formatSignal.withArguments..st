signalling
formatSignal: aString withArguments: anArray
	^ self signal: (aString format: anArray)