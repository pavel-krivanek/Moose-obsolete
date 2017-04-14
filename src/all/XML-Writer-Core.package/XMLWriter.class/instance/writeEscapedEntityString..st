private
writeEscapedEntityString: aString
	stream nextPut: $".
	formatter
		ifNotNil: [formatter formatBeforeQuotedStringValue: aString].
	self isEscaping
		ifTrue: [
			self
				write: aString
				escapedWith: self entityValueEscapes]
		ifFalse: [stream nextPutAll: aString].
	formatter
		ifNotNil: [formatter formatAfterQuotedStringValue: aString].
	stream nextPut: $".