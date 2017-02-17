test follow
testFollowSetStar6
	| a b p followSet n |

	a := 'a' asParser.
	p := a star.
	followSet := self follow: a in: p.
	

	self assert: followSet anySatisfy: [:e | e end matches: 'a'].
	self assert: followSet anySatisfy: [:e | e end matches: ''].