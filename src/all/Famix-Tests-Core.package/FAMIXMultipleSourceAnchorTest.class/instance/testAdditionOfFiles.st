tests
testAdditionOfFiles
	self assert: multipleFileAnchor allFiles size equals: 1.
	multipleFileAnchor addFileAnchorWithPath: 'aFileName1'.
	self assert: multipleFileAnchor allFiles size equals: 2.
	self assert: multipleFileAnchor sourceText lines size equals:2.
	multipleFileAnchor addFileAnchorWithPath: 'aFileName2'.
	self assert: multipleFileAnchor sourceText lines size equals:3.
	