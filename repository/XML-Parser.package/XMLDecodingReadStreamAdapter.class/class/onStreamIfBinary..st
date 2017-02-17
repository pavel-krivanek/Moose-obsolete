instance creation
onStreamIfBinary: aStream
	| binaryReadStreamAdapter |

	binaryReadStreamAdapter :=
		XMLBinaryReadStreamAdapter onStreamIfBinary: aStream.
	binaryReadStreamAdapter == aStream
		ifTrue: [^ aStream]
		ifFalse: [
			^ self
				basicOn: binaryReadStreamAdapter
				streamConverter: XMLStreamConverter default].