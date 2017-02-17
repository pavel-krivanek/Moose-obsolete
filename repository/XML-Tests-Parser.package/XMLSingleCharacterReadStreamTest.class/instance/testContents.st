tests
testContents
	| stream |

	stream := self newStreamOnCharacter.
	self assert: stream contents = self character asString.

	stream next.
	self assert: stream contents = self character asString.