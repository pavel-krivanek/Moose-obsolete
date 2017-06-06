tests
testEmptySourceTextWhenNoEndLine
	| fileAnchor |
	fileAnchor := self actualClass new
		endLine: nil;
		yourself.
	self assert: fileAnchor sourceText isEmpty