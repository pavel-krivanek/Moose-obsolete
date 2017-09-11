tests
testLineCountWithoutEndPos
	| anchor |
	anchor := self anchorForClassTest
		endPos: nil;
		yourself.
	self assert: anchor lineCount equals: 17