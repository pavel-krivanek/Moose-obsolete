test first
testFirstSequence1
	| p first |
	p := 'a' asParser, 'b' asParser .
	
	first := self first: p.
	self assert: first size: 1.
	self assert: first allMatches: 'a'.
	self assert: first noneMatches: 'b'.	