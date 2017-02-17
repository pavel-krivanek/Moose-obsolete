test follow
testFollowSetStar1
	| a b p followSet |

	a := 'a' asParser star.
	b := 'b' asParser.
	p := a, b.
	followSet := self follow: a in: p.
	
	self assert: followSet size: 1.
	self assert: followSet anySatisfy: [:e | e end matches: 'b'].
	self assert: followSet noneSatisfy: [:e | e end matches: ''].
