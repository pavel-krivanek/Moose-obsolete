test follow
testFollowSet6
	| result p root followSets followSet follow follow1 follow2 |

	p := 'a' asParser.
	follow1 := ('b' asParser, 'c' asParser) / nil asParser.
	follow2 := 'd' asParser.
	
	follow := (follow1, follow2).
	
	root  := (p, follow).

	followSet := self follow: p in: root.

	self assert: followSet anySatisfy: [:e | e end matches: 'b' ].
	self assert: followSet anySatisfy: [:e | e end matches: 'd' ].
