testing
testPatternRemoval
	| pattern result |
	pattern := PPPattern class: PPLiteralObjectParser.
	rewriter replace: pattern / pattern with: pattern.
	result := rewriter execute: $a asParser / $a asParser.
	self assert: rewriter hasChanged.
	self assert: result class equals: PPLiteralObjectParser.
	self assert: result literal equals: $a.
	result := rewriter execute: $a asParser / $a asParser / $a asParser.
	self deny: rewriter hasChanged.
	self assert: result class equals: PPChoiceParser.
	self assert: result children size equals: 3