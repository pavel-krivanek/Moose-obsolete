tests
testPeek
	| stream |

	stream := self newStreamOnCharacter.
	self assert: stream peek = self character.

	stream next.
	self assert: stream peek isNil.