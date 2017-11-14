tests
testPushBackStreamWhenPoppedDoIsExternal
	| streamReader evaluated |

	streamReader := self newStreamReaderOn: (self newStreamOn: '').
	evaluated := false.
	self assert:
		(streamReader
			pushBackStream: self newStreamReaderOnSourceXML
			whenPoppedDo: [evaluated := true]
			isExternal: true) == streamReader.
	self normalizedSourceXML do: [:each |
		self
			assert: streamReader peek = each;
			assert: streamReader next = each;
			deny: evaluated].
	self
		assert: streamReader next isNil;
		assert: evaluated.