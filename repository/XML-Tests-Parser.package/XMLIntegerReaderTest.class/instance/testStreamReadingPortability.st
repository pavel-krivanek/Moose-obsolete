tests
testStreamReadingPortability
	| stream integerReader |

	stream := XMLExceptionRaisingReadStream on: '123abc'.
	integerReader := XMLIntegerReader on: stream.
	self
		assert: (integerReader nextIntegerWithBase: 16) = 16r123ABC;
		assert: integerReader atEnd.
	self
		shouldnt: [
			integerReader
				nextInteger;
				nextIntegerWithBase: 16;
				nextIntegerWithBase: 16 upTo: 1;
				nextIntegerWithBase: 16 startingWithAny: 'x' orBase: 10;
				peek;
				next]
		raise: Error.

	self assert: stream atEnd.
	self should: [stream peek] raise: Error.
	self should: [stream next] raise: Error.