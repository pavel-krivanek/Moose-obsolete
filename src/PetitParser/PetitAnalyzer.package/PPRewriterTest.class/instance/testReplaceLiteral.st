testing
testReplaceLiteral
	| result |
	rewriter replace: $a asParser with: $b asParser.
	result := rewriter execute: $a asParser.
	self assert: rewriter hasChanged.
	self assert: result literal equals: $b.
	result := rewriter execute: $c asParser.
	self deny: rewriter hasChanged.
	self assert: result literal equals: $c.
	result := rewriter execute: $a asParser , $b asParser , $c asParser.
	self assert: rewriter hasChanged.
	self assert: result children size equals: 3.
	self assert: result children first literal equals: $b.
	self assert: result children last literal equals: $c