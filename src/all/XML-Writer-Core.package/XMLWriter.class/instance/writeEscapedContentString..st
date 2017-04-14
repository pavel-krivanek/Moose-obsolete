private
writeEscapedContentString: aString
	stream nextPut: $".
	formatter
		ifNotNil: [formatter formatBeforeQuotedStringValue: aString].
	self isEscaping
		ifTrue: [
			self
				write: aString
				escapedWith: contentStringEscapes]
		ifFalse: [stream nextPutAll: aString].
	formatter
		ifNotNil: [formatter formatAfterQuotedStringValue: aString].
	stream nextPut: $".