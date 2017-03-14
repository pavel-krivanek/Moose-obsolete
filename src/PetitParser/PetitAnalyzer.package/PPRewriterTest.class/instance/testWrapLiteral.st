testing
testWrapLiteral
	| result |
	rewriter replace: $a asParser withValueFrom: [ :parser | parser token ].
	result := rewriter execute: $a asParser.
	self assert: rewriter hasChanged.
	self assert: result class equals: PPTokenParser.
	self assert: result children first literal equals: $a.
	result := rewriter execute: $c asParser.
	self deny: rewriter hasChanged.
	self assert: result literal equals: $c.
	result := rewriter execute: $a asParser , $b asParser.
	self assert: rewriter hasChanged.
	self assert: result children first class equals: PPTokenParser.
	self assert: result children first children first literal equals: $a.
	self assert: result children last class equals: PPLiteralObjectParser.
	self assert: result children last literal equals: $b