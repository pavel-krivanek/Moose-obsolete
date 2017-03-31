test first
testFirstRepeat3
	| p first |
	p := 'a' asParser negate, 'a' asParser.
	
	first := self first: p.

	self assert: first noneMatches: 'a'.