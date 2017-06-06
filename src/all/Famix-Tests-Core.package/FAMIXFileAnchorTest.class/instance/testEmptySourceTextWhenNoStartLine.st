tests
testEmptySourceTextWhenNoStartLine
	| fileAnchor |
	fileAnchor := self actualClass new
		startLine: nil;
		yourself.
	self assert: fileAnchor sourceText isEmpty