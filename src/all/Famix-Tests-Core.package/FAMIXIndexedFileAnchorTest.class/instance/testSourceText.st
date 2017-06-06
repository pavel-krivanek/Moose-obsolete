tests
testSourceText
	| anchor |
	anchor := self actualClass new
		startPos: 212;
		endPos: 250;
		yourself.
	anchor stub completeText willReturn: self sourceCodeForTest.
	self assert: anchor sourceText equals: 'public int throwDice() {
		return 9;
	}'