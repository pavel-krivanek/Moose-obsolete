tests
testUpToEnd
	| streamReader |

	self normalizedSourceXML withIndexDo: [:each :i |
		streamReader := self newStreamReaderOnSourceXML.
		streamReader next: i.
		self
			assert: streamReader upToEnd = (self normalizedSourceXML allButFirst: i);
			assert: streamReader upToEnd = ''].
	streamReader := self newStreamReaderOnSourceXML.
	self
		assert: streamReader upToEnd = self normalizedSourceXML;
		assert: streamReader upToEnd = ''.