testing
testDuplicationRemoval
	| duplicate before between after result |
	duplicate := PPPattern any.
	before := PPListPattern any.
	between := PPListPattern any.
	after := PPListPattern any.
	rewriter replace: before / duplicate / between / duplicate / after with: before / duplicate / between / after.
	result := rewriter execute: $a asParser / $a asParser.
	self assert: rewriter hasChanged.
	self assert: result children size equals: 1.
	self assert: result children first literal equals: $a.
	result := rewriter execute: $b asParser / $a asParser / $a asParser.
	self assert: rewriter hasChanged.
	self assert: result children size equals: 2.
	self assert: result children first literal equals: $b.
	self assert: result children last literal equals: $a.
	result := rewriter execute: $a asParser / $b asParser / $a asParser.
	self assert: rewriter hasChanged.
	self assert: result children size equals: 2.
	self assert: result children first literal equals: $a.
	self assert: result children last literal equals: $b.
	result := rewriter execute: $a asParser / $a asParser / $b asParser.
	self assert: rewriter hasChanged.
	self assert: result children size equals: 2.
	self assert: result children first literal equals: $a.
	self assert: result children last literal equals: $b