test follow
testFollowSetStar4
	| a b p followSet |

	a := 'a' asParser.
	b := 'b' asParser.
	p := a star, b.
	followSet := self follow: a in: p.
	
	self assert: followSet size: 2.
	self assert: followSet anySatisfy: [:e | e end matches: 'a'].
	self assert: followSet anySatisfy: [:e | e end matches: 'b'].
	self assert: followSet noneSatisfy: [:e | e end matches: ''].
