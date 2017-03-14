tests
testPosition
	| stream |

	stream := self newStream.
	self
		assert: stream position = 0;
		assert: (stream position: 1) == stream;
		assert: stream position = 0.