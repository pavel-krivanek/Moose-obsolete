testing-fixtures
testSideEffectListCopy
	| old new |
	old := $a asParser , $b asParser.
	new := old copy.
	
	self deny: old == new.
	self deny: old children == new children.
	self assert: old children first == new children first.
	self assert: old children last == new children last