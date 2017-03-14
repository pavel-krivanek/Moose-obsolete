test first
testFirstSequence4
	| p first |
	p := ((nil asParser / 'a' asParser) plus), 'b' asParser.
	
	first := self first: p.
	self assert: first anyMatches: 'b'.
	self assert: first anyMatches: 'a'.
	self assert: first noneMatches: ''.