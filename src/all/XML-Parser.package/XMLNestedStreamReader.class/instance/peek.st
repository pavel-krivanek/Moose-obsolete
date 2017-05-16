accessing
peek
	peekChar
		ifNotNil: [^ peekChar].

	stream atEnd
		ifTrue: [
			self hasNextAfterPoppingStreamsAtEnd
				ifFalse: [^ nil]].
	peekChar := stream next.
	isExternal
		ifTrue: [
			peekChar == LFCharacter
				ifTrue: [^ peekChar := normalizedLineEndingChar].
			peekChar == CRCharacter
				ifTrue: [
					stream atEnd
						ifFalse: [
							stream peek == LFCharacter
								ifTrue: [stream next]].
					^ peekChar := normalizedLineEndingChar]].
	^ peekChar.