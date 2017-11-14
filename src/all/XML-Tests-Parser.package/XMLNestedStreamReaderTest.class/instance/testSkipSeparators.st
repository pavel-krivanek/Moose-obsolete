tests
testSkipSeparators
	| streamReader stream currentLineNumber currentColumnNumber currentPosition |

	streamReader := self newStreamReaderOnSourceXML.
	stream := self newStreamOn: self normalizedSourceXML.
	currentLineNumber := 1.
	currentColumnNumber := currentPosition := 0.
	[stream atEnd]
		whileFalse: [| totalSeparatorsSkipped |
			totalSeparatorsSkipped := 0.
			[self separators includes: stream peek]
				whileTrue: [
					stream next = self normalizedLineEnding
						ifTrue: [
							currentLineNumber := currentLineNumber + 1.
							currentColumnNumber := 0]
						ifFalse: [currentColumnNumber := currentColumnNumber + 1].
					currentPosition := currentPosition + 1.
					totalSeparatorsSkipped := totalSeparatorsSkipped + 1].
			streamReader skipSeparators.
			self
				assert: streamReader currentLineNumber = currentLineNumber;
				assert: streamReader currentColumnNumber = currentColumnNumber;
				assert: streamReader currentPosition = currentPosition.
			totalSeparatorsSkipped > 0
				ifFalse: [
					stream next.
					streamReader next.
					currentColumnNumber := currentColumnNumber + 1.
					currentPosition := currentPosition + 1]].