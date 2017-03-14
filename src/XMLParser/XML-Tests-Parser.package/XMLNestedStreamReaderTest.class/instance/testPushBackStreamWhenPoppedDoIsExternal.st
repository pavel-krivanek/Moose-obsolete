tests
testPushBackStreamWhenPoppedDoIsExternal
	| streamReader evaluated |

	streamReader := XMLNestedStreamReader on: '' readStream.
	evaluated := false.
	self assert:
		(streamReader
			pushBackStream: self sourceXML readStream
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