test follow
testFollowSetOptional1
	| result p root followSets followSet follow follow1 follow2 |

	p := 'a' asParser.
	follow1 := 'b' asParser optional.
	follow2 := 'c' asParser.
	
	root := p, follow1, follow2.

	followSet := self follow: p in: root.

	self assert: followSet anySatisfy: [:e | e end matches: 'b'].
	self assert: followSet anySatisfy: [:e | e end matches: 'c'].
	self assert: followSet noneSatisfy: [:e | e end matches: ''].
