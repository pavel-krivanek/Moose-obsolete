instance creation
on: aStream streamConverter: aStreamConverter
	^ self
		basicOn: (XMLBinaryReadStreamAdapter onStreamIfBinary: aStream)
		streamConverter: aStreamConverter