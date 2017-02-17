tests
testUpToEnd
	| stream |

	stream := self newStreamOnCharacter.
	self
		assert: stream upToEnd = self character asString;
		assert: stream upToEnd = ''.