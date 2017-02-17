test follow
testFollowSet4
	| result p follow root followSets followSet |

	p := 'a' asParser.
	follow := ('b' asParser, 'c' asParser).
	
	
	root := (p star, follow).

	followSet := self follow: p in: root.

	self assert: followSet anySatisfy: [:e | e end matches: 'b' ].
	self assert: followSet anySatisfy: [:e | e end matches: 'a' ].
