testing
testSourceText
	| files |
	files := model allFiles.
	self assert: (files entityNamed: #'folders/fileWith9Chars2Lines') sourceText notEmpty