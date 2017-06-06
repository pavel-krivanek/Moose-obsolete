tests
testSourceTextWithoutStartAndEndPos
	| anchor |
	anchor := self actualClass new.
	anchor stub completeText willReturn: self sourceCodeForTest.
	self assert: anchor sourceText equals: self sourceCodeForTest