tests
testSourceTextWithoutStartAndEndPos
	| anchor |
	anchor := self anchorForClassTest
		startPos: nil;
		endPos: nil;
		yourself.
	anchor stub completeText willReturn: self sourceCodeForTest.
	self assert: anchor sourceText equals: self sourceCodeForTest