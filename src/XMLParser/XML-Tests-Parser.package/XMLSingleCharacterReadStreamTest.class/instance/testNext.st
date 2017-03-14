tests
testNext
	| stream |

	stream := self newStreamOnCharacter.
	self
		assert: stream next = self character;
		assert: stream next isNil.