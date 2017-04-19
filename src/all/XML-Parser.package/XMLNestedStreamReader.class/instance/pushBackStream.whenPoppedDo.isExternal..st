positioning
pushBackStream: aStream whenPoppedDo: aBlock isExternal: aBoolean
	self nestedStreamsAddLast:
		((isExternal
			ifTrue: [XMLPushedBackExternalStream]
			ifFalse: [XMLPushedBackInternalStream])
				stream: stream
				whenPoppedDo: whenPoppedDo
				currentPosition: currentPosition
				currentLineNumber: currentLineNumber
				currentLineStartPosition: currentLineStartPosition).

	peekChar
		ifNotNil: [
			self nestedStreamsAddLast:
				(XMLPushedBackInternalStream
					stream: (XMLSingleCharacterReadStream on: peekChar)
					whenPoppedDo: nil
					currentPosition: currentPosition
					currentLineNumber: currentLineNumber
					currentLineStartPosition: currentLineStartPosition).
			peekChar := nil].

	self stream: aStream.
	whenPoppedDo := aBlock.
	(isExternal := aBoolean)
		ifTrue: [
			currentPosition := 0.
			currentLineNumber := 1.
			currentLineStartPosition := 0].