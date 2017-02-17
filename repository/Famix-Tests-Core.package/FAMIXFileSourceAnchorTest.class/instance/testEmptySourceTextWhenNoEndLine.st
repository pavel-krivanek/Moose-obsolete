tests
testEmptySourceTextWhenNoEndLine
	| fileAnchor |
	fileAnchor := FAMIXFileAnchor new.
	fileAnchor endLine: nil.
	self assert: fileAnchor sourceText isEmpty