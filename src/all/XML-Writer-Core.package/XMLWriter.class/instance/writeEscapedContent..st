private
writeEscapedContent: aString
	self isEscaping
		ifTrue: [
			self
				write: aString
				escapedWith: contentEscapes]
		ifFalse: [stream nextPutAll: aString]