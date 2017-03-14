tests
testLineEndingNormalizationAcrossStreams
	| streamReader |

	streamReader := self newStreamReaderOn: (String with: self lf) readStream.
	streamReader pushBackCharacter: self cr.
	streamReader
		pushBackStream: (String with: self cr with: self lf) readStream
		whenPoppedDo: nil
		isExternal: true.
	self
		assert: streamReader next = self normalizedLineEnding;
		deny: streamReader atEnd;
		assert: streamReader next = self cr;
		deny: streamReader atEnd;
		assert: streamReader next = self normalizedLineEnding;
		assert: streamReader atEnd.