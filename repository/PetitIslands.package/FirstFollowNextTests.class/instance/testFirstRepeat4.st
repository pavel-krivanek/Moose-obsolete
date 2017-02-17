test first
testFirstRepeat4
	| p first |
	p := 'a' asParser negate star, 'b' asParser.
	
	first := self first: p.

	self assert: first size: 2.
	self assert: first noneMatches: 'a'.