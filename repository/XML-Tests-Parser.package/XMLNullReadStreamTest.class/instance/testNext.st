tests
testNext
	| stream |

	stream := self newStream.
	self
		assert: stream next isNil;
		assert: stream next isNil.