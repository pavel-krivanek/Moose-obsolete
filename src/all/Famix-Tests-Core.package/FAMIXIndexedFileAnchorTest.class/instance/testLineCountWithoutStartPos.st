tests
testLineCountWithoutStartPos
	| anchor |
	anchor := self anchorForClassTest
		startPos: nil;
		endPos: 89;
		yourself.
	self assert: anchor lineCount equals: 7