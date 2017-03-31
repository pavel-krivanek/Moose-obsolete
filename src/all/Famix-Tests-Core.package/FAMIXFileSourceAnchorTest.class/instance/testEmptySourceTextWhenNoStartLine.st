tests
testEmptySourceTextWhenNoStartLine
	| fileAnchor |
	fileAnchor := FAMIXFileAnchor new.
	fileAnchor startLine: nil.
	self assert: fileAnchor sourceText isEmpty