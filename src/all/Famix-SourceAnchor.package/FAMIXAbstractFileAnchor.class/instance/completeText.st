accessing
completeText
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo:
			[ :in | (ZnCharacterReadStream on: in encoding: self encoding) upToEnd ]