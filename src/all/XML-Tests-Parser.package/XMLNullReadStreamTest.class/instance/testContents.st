tests
testContents
	| stream |

	stream := self newStream.
	self
		assert: stream contents = '';
		assert: stream contents = ''.