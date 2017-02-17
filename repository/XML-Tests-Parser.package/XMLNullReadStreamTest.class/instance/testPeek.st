tests
testPeek
	| stream |

	stream := self newStream.
	self assert: stream peek isNil.

	stream next.
	self assert: stream peek isNil.