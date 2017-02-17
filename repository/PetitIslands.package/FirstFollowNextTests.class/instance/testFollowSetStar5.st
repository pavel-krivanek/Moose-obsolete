test follow
testFollowSetStar5
	| a b p followSet n |

	a := 'a' asParser.
	b := 'b' asParser.
	n := nil asParser.
	p := a star, (b / n).
	followSet := self follow: a in: p.
	

	self assert: followSet anySatisfy: [:e | e end matches: 'a'].
	self assert: followSet anySatisfy: [:e | e end matches: 'b'].
	self assert: followSet anySatisfy: [:e | e end matches: ''].