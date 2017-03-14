tests
testUpTo
	self normalizedSourceXML do: [:each | | streamReader |
		streamReader := self newStreamReaderOnSourceXML.
		self assert:
			(streamReader upTo: each) =
				(self normalizedSourceXML copyUpTo: each).
		self assert:
			streamReader upToEnd =
				(self normalizedSourceXML copyAfter: each)].
	self assert:
		(self newStreamReaderOnSourceXML upTo: self absentChar) = self normalizedSourceXML.