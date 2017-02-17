test follow
testFollowSet8
	| result p root followSets followSet follow |

	p := 'a' asParser.
	follow := PPEndOfFileParser new.
	
	root := p, follow.

	followSet := self follow: p in: root.

	self assert: followSet anySatisfy: [:e | e end matches: ''].
