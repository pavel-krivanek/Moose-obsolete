test follow
testFollowSet1
	| result p root followSet |


	p := 'a' asParser.
	root := (p star, 'b' asParser).
	
	followSet := self follow: p in: root.
	
	self assert: followSet anySatisfy: [:e | e literal = 'a'].
	self assert: followSet anySatisfy: [:e | e literal = 'b'].
