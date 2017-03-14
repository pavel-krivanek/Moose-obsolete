tests
testAtEnd
	| stream |

	stream := self newStreamOnCharacter.
	self deny: stream atEnd.

	stream next.
	self assert: stream atEnd.