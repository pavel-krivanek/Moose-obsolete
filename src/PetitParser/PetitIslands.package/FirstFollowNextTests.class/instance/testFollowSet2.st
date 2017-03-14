test follow
testFollowSet2
	| result p follow root followSets followSet |

	p := 'a' asParser.
	follow := 'b' asParser, 'c' asParser.
	
	root := (p, follow).

	followSet := self follow: p in: root.

	self assert: followSet size: 1.
	self assert: followSet anySatisfy: [:e | e  end matches: 'b'].
	self assert: followSet noneSatisfy: [:e | e matches: 'c'].	