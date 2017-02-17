testing
testSwapTwoPattern
	| first second result |
	first := PPPattern any.
	second := PPPattern any.
	rewriter replace: first , second with: second , first.
	result := rewriter execute: $a asParser , $b asParser.
	self assert: rewriter hasChanged.
	self assert: result children first literal equals: $b.
	self assert: result children last literal equals: $a.
	result := rewriter execute: $a asParser / $b asParser.
	self deny: rewriter hasChanged.
	self assert: result children first literal equals: $a.
	self assert: result children last literal equals: $b