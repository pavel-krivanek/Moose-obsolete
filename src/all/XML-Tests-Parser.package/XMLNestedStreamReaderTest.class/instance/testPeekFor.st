tests
testPeekFor
	| streamReader |

	streamReader := self newStreamReaderOnSourceXML.
	self normalizedSourceXML do: [:each |
		self
			deny: (streamReader peekFor: #absent);
			deny: (streamReader peekFor: nil);
			assert: (streamReader peekFor: each);
			deny: (streamReader peekFor: #absent);
			deny: (streamReader peekFor: nil)].
	self
		deny: (streamReader peekFor: #absent);
		deny: (streamReader peekFor: nil).