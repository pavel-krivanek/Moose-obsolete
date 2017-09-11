tests
testSourceTextEndingOnNewLine
	| anchor |
	anchor := self anchorForClassTest
		startLine: 17;
		startColumn: 2;
		endLine: 22;
		endColumn: nil;
		yourself.
	anchor fileReference
		writeStreamDo: [ :s | 
			s
				setToEnd;
				cr ].
	self
		assert: anchor sourceText
		equals:
			'public int throwDice() {
		return 9;
	}

}
'