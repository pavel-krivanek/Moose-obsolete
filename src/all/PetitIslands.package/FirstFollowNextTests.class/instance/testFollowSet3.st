test follow
testFollowSet3
	| result p follow root followSets followSet |

	p := 'a' asParser.
	follow := ('b' asParser, 'c' asParser) / ('d' asParser).
	
	
	root := (p, follow).

	followSet := self follow: p in: root.

	self assert: followSet anySatisfy: [:e | e end matches: 'b' ].
	self assert: followSet anySatisfy: [:e | e end matches: 'd' ].
