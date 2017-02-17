tests
testSkipSeparators
	| streamReader readStream currentLineNumber currentColumnNumber currentPosition |

	streamReader := self newStreamReaderOnSourceXML.
	readStream := self normalizedSourceXML readStream.
	currentLineNumber := 1.
	currentColumnNumber := currentPosition := 0.
	[readStream atEnd]
		whileFalse: [| totalSeparatorsSkipped |
			totalSeparatorsSkipped := 0.
			[readStream peek isXMLSeparator]
				whileTrue: [
					readStream next = self normalizedLineEnding
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
					readStream next.
					streamReader next.
					currentColumnNumber := currentColumnNumber + 1.
					currentPosition := currentPosition + 1]].