tests
testSourceTextWithoutNoEndColumn
	| anchor |
	anchor := self anchorForClassTest
		startLine: 17;
		startColumn: 2;
		endLine: 19;
		endColumn: nil;
		yourself.
	self
		assert: anchor sourceText
		equals:
			'public int throwDice() {
		return 9;
	}'