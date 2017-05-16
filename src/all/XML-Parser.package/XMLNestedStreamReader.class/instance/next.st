accessing
next
	| nextChar |

	peekChar
		ifNil: [
			stream atEnd
				ifTrue: [
					self hasNextAfterPoppingStreamsAtEnd
						ifFalse: [^ nil]].
			nextChar := stream next.
			isExternal
				ifTrue: [
					currentPosition := currentPosition + 1.
					nextChar == LFCharacter
						ifTrue: [
							nextChar := normalizedLineEndingChar.
							currentLineNumber := currentLineNumber + 1.
							currentLineStartPosition := currentPosition]
						ifFalse: [
							nextChar == CRCharacter
								ifTrue: [
									stream atEnd
										ifFalse: [
											stream peek == LFCharacter
												ifTrue: [stream next]].
									nextChar := normalizedLineEndingChar.
									currentLineNumber := currentLineNumber + 1.
									currentLineStartPosition := currentPosition]]]]
		ifNotNil: [
			nextChar := peekChar.
			peekChar := nil.
			isExternal
				ifTrue: [
					currentPosition := currentPosition + 1.
					nextChar == normalizedLineEndingChar
						ifTrue: [
							currentLineNumber := currentLineNumber + 1.
							currentLineStartPosition := currentPosition]]].

	readLimit
		ifNotNil: [
			(readLimit := readLimit - 1) >= 0
				ifFalse: [self errorReadLimitExceeded]].

	^ nextChar.