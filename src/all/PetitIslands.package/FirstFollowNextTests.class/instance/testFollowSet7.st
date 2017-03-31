test follow
testFollowSet7
	| result p root followSets followSet r1 r2 follow1 follow2 |

	p := 'a' asParser.
	follow1 := ('b' asParser, 'c' asParser) / nil asParser.
	follow2 := 'd' asParser / nil asParser .
	
	r1 := (p, follow1).
	r2 := (r1, follow2).
	
	root  := r2.

	followSet := self follow: p in: root.

	self assert: followSet anySatisfy: [:e | e end matches: 'b' ].
	self assert: followSet anySatisfy: [:e | e end matches: 'd' ].
