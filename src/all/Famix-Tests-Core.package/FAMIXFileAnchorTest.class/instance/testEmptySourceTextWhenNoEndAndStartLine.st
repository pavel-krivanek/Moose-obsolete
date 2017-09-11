tests
testEmptySourceTextWhenNoEndAndStartLine
	| fileAnchor |
	fileAnchor := self anchorForClassTest
		startLine: nil;
		startColumn: nil;
		endLine: nil;
		endColumn: nil;
		yourself.
	self assert: fileAnchor sourceText equals: self sourceCodeForTest