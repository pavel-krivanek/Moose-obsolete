tests
testLineEndingNormalizationAcrossStreams
	| streamReader |

	streamReader :=
		self newStreamReaderOn:
			(self newStreamOn: (String with: self lf)).
	streamReader pushBackCharacter: self cr.
	streamReader
		pushBackStream:
			(self newStreamOn:
				(String with: self cr with: self lf))
		whenPoppedDo: nil
		isExternal: true.
	self
		assert: streamReader next = self normalizedLineEnding;
		deny: streamReader atEnd;
		assert: streamReader next = self cr;
		deny: streamReader atEnd;
		assert: streamReader next = self normalizedLineEnding;
		assert: streamReader atEnd.