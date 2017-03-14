testing-objects
testAnyOf
	| parser |
	parser := PPPredicateObjectParser anyOf: #($a $z).
	self assertCharacterSets: parser.
	self assert: parser parse: 'a' to: $a.
	self assert: parser parse: 'z' to: $z.
	self assert: parser fail: 'x'