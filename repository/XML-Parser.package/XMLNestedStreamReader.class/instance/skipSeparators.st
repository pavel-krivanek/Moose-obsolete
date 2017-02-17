positioning
skipSeparators
	"nil understands isXMLSeparator so the result of the inlined #peek
	does not need to be tested for nil first"
	[(peekChar ifNil: [peekChar := self basicNext]) "inlined #peek"
		isXMLSeparator]
		whileTrue: [
			"inlined from #next"
			readLimit
				ifNotNil: [
					(readLimit := readLimit - 1) >= 0
						ifFalse: [self errorReadLimitExceeded]].
			isExternal
				ifTrue: [
					currentPosition := currentPosition + 1.
					peekChar == normalizedLineEndingChar
						ifTrue: [
							currentLineNumber := currentLineNumber + 1.
							currentLineStartPosition := currentPosition]].

			peekChar := nil]