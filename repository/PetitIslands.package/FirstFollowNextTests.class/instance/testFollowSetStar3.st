test follow
testFollowSetStar3
	| a b p followSet n |

	a := 'a' asParser star.
	p := a.
	followSet := self follow: a in: p.
	
	self assert: followSet noneSatisfy: [:e | e end matches: 'a'].
	self assert: followSet anySatisfy: [:e | e end matches: ''].