testing
testPatternReplacement
	| pattern result |
	pattern := PPPattern class: PPLiteralObjectParser.
	rewriter replace: pattern with: pattern , pattern.
	result := rewriter execute: $a asParser.
	self assert: rewriter hasChanged.
	self assert: result class equals: PPSequenceParser.
	self assert: result children first literal equals: $a.
	self assert: result children last literal equals: $a.
	result := rewriter execute: #any asParser.
	self deny: rewriter hasChanged.
	self assert: result class equals: PPPredicateObjectParser