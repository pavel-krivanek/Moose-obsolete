tests
testSourceTextEndingOnTwoNewLine
	| anchor |
	anchor := self anchorForClassTest
		startLine: 17;
		startColumn: 2;
		endLine: 23;
		endColumn: nil;
		yourself.
	anchor fileReference
		writeStreamDo: [ :s | 
			s
				setToEnd;
				cr;
				cr ].
	self
		assert: anchor sourceText
		equals:
			'public int throwDice() {
		return 9;
	}

}

'