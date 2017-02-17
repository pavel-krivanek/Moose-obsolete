test first
testFirstRepeat2
	| p first |
	p := 'a' asParser star, 'b' asParser.
	
	first := self first: p.

	self assert: first anyMatches: 'a'.
	self assert: first anyMatches: 'b'.
	self assert: first noneMatches: ''	