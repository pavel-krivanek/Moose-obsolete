test first
testFirstRepeat1
	| p first |
	p := ('a' asParser / nil asParser) plus.
	
	first := self first: p.

	self assert: first anyMatches: 'a'.
	self assert: first anyMatches: ''.	