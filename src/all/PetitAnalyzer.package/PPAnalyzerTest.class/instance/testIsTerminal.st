testing
testIsTerminal
	self assert: PPEpsilonParser new isTerminal.
	self assert: PPFailingParser new isTerminal.
	self assert: PPPluggableParser new isTerminal.
	self assert: PPLiteralObjectParser new isTerminal.
	self assert: PPLiteralSequenceParser new isTerminal.
	self assert: PPPredicateObjectParser new isTerminal.
	self assert: PPPredicateSequenceParser new isTerminal.
	
	self deny: ($a asParser / $b asParser) isTerminal.
	self deny: ($a asParser , $b asParser) isTerminal.
	self deny: ($a asParser and) isTerminal.
	self deny: ($a asParser not) isTerminal