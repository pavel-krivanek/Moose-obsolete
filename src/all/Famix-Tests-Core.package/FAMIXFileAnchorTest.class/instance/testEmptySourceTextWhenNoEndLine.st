tests
testEmptySourceTextWhenNoEndLine
	| fileAnchor |
	fileAnchor := self anchorForClassTest
		startLine: 17;
		startColumn: 2;
		endLine: nil;
		endColumn: nil;
		yourself.
	self
		assert: fileAnchor sourceText
		equals:
			'public int throwDice() {
		return 9;
	}

}'