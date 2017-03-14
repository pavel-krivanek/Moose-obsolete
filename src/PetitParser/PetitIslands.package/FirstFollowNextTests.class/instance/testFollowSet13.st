test follow
testFollowSet13
	| parser followSet a b c |
	
	a := 'a' asParser.
	b := 'b' asParser optional.
	c := 'c' asParser.
	
	
	parser := a, b, c.
	followSet := self follow: c in: parser.
	self assert: followSet anySatisfy: [:e | e end matches: '' ].
	
	followSet := self follow: b in: parser.
	self assert: followSet anySatisfy: [:e | e end matches: 'c' ].

	followSet := self follow: a in: parser.
	self assert: followSet anySatisfy: [:e | e end matches: 'b' ].
	self assert: followSet anySatisfy: [:e | e end matches: 'c' ].
