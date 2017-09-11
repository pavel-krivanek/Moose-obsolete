tests
testSourceTextInOneLine
	| anchor |
	anchor := self anchorForClassTest
		startLine: 15;
		startColumn: 5;
		endLine: 15;
		endColumn: 34;
		yourself.
	self
		assert: anchor sourceText
		equals:
			'@see goosegame.Dice#throwDice'