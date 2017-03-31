test first
testFirstNot
	| p |
	p := 'a' asParser not, 'b' asParser.
	
	self assert: (p parse: 'b') isPetitFailure not.
	
	self assert: (self first: p) size: 1.
	self assert: (self first: p) noneSatisfy: [:each | each matches: 'a' ].
	self assert: (self first: p) anySatisfy:  [:each | each matches: 'b' ].
	self assert: (self first: p) anySatisfy: [:each | each matches: 'c' ].
