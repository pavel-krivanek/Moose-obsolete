tests
testClose
	| stream |

	stream := self newStreamOnCharacter.
	self
		deny: stream atEnd;
		assert: stream close == stream;
		assert: stream atEnd.