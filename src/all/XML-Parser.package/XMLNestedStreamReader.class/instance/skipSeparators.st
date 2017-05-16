positioning
skipSeparators
	| isExternalNormalizedLineEnding |

	[peekChar
		ifNil: [
			stream atEnd
				ifTrue: [
					self hasNextAfterPoppingStreamsAtEnd
						ifFalse: [^ self]].
			peekChar := stream next.
			isExternal
				ifTrue: [
					peekChar == LFCharacter
						ifTrue: [isExternalNormalizedLineEnding := true]
						ifFalse: [
							peekChar == CRCharacter
								ifTrue: [
									stream atEnd
										ifFalse: [
											stream peek == LFCharacter
												ifTrue: [stream next]].
									isExternalNormalizedLineEnding := true]
								ifFalse: [
									isExternalNormalizedLineEnding := false.
									"nil understands #isXMLSeparator, so it
									isn't tested for first"
									peekChar isXMLSeparator]]]
				ifFalse: [
					"nil understands #isXMLSeparator, so it isn't tested for first"
					peekChar isXMLSeparator]]
			ifNotNil: [
				isExternal
					ifTrue: [
						isExternalNormalizedLineEnding :=
							peekChar == normalizedLineEndingChar].
				peekChar isXMLSeparator]]
		whileTrue: [
			"inlined from #next"
			peekChar := nil.
			isExternal
				ifTrue: [
					currentPosition := currentPosition + 1.
					isExternalNormalizedLineEnding
						ifTrue: [
							currentLineNumber := currentLineNumber + 1.
							currentLineStartPosition := currentPosition].
			readLimit
				ifNotNil: [
					(readLimit := readLimit - 1) >= 0
						ifFalse: [self errorReadLimitExceeded]]]]