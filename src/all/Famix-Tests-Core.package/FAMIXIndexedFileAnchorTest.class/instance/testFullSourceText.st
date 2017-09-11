tests
testFullSourceText
	| anchor |
	anchor := self anchorForClassTest
		startPos: 1;
		endPos: self sourceCodeForTest size;
		yourself.
	self assert: anchor sourceText equals: self sourceCodeForTest