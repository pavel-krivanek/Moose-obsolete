tests
testSourceTextWithoutEndPos
	| anchor |
	anchor := self anchorForClassTest
		startPos: 212;
		endPos: nil;
		yourself.
	anchor stub completeText willReturn: self sourceCodeForTest.
	self
		assert: anchor sourceText
		equals:
			'public int throwDice() {
		return 9;
	}

}'