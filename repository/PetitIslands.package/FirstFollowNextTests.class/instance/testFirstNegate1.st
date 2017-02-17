test first
testFirstNegate1
	| p first |
	p := 'a' asParser negate, 'b' asParser.
	
	self assert: (p parse: 'bb') isPetitFailure not.
	self assert: (p parse: 'cb') isPetitFailure not.
	
	self assert: (self first: p) noneSatisfy: [:each | each matches: 'a' ].
	self assert: (self first: p) anySatisfy:  [:each | each matches: 'b' ].
	self assert: (self first: p) anySatisfy: [:each | each matches: 'c' ].
