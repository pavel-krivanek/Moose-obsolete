tests
testPeek
	| streamReader currentLineNumber currentColumnNumber currentPosition |

	streamReader := self newStreamReaderOnSourceXML.
	currentLineNumber := 1.
	currentColumnNumber := currentPosition := 0.
	self normalizedSourceXML do: [:each |
		self
			assert: streamReader peek = each;
			assert: streamReader currentLineNumber = currentLineNumber;
			assert: streamReader currentColumnNumber = currentColumnNumber.

		streamReader next.
		each = self normalizedLineEnding
			ifTrue: [
				currentLineNumber := currentLineNumber + 1.
				currentColumnNumber := 0]
			ifFalse: [currentColumnNumber := currentColumnNumber + 1].
		currentPosition := currentPosition + 1.
		self
			assert: streamReader currentLineNumber = currentLineNumber;
			assert: streamReader currentColumnNumber = currentColumnNumber;
			assert: streamReader currentPosition = currentPosition].
	self assert: streamReader peek isNil.