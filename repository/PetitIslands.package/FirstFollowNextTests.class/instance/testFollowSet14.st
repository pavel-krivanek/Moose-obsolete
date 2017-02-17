test follow
testFollowSet14
	| parser followSet a b c |
	
	a := 'a' asParser.
	b := 'b' asParser optional.
	c := 'c' asParser.
	
	
	parser := a plus, b, c.

	followSet := self follow: a in: parser.
	self assert: followSet anySatisfy: [:e | e end matches: 'a' ].	
	self assert: followSet anySatisfy: [:e | e end matches: 'b' ].
	self assert: followSet anySatisfy: [:e | e end matches: 'c' ].
	self assert: followSet noneSatisfy: [:e | e end matches: '' ].