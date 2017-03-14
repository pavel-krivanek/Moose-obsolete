tests
testNormalizedLineEndingChar
	| streamReader |

	streamReader := self newStreamReaderOnSourceXML.
	self
		assert: (streamReader normalizedLineEndingChar: $N) == streamReader;
		assert: (streamReader normalizedLineEndingChar) == $N;
		assert: streamReader upToEnd = (self sourceXMLNormalizedWith: $N).