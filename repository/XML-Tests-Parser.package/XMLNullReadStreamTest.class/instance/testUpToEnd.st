tests
testUpToEnd
	| stream |

	stream := self newStream.
	self
		assert: stream upToEnd = '';
		assert: stream upToEnd = ''.