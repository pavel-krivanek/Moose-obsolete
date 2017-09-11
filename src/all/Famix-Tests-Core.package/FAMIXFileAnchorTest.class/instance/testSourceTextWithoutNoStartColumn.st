tests
testSourceTextWithoutNoStartColumn
	| anchor |
	anchor := self anchorForClassTest
		startLine: 17;
		startColumn: nil;
		endLine: 19;
		endColumn: 3;
		yourself.
	self
		assert: anchor sourceText
		equals:
			'	public int throwDice() {
		return 9;
	}'