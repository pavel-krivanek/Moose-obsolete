test first
testFirstSequence2
	| p first |
	p := nil asParser, 'a' asParser, 'b' asParser .
	
	first := self first: p.
	self assert: first size: 1.
	self assert: first allMatches: 'a'.
	self assert: first noneMatches: 'b'.	
	self assert: first noneMatches: ''.		