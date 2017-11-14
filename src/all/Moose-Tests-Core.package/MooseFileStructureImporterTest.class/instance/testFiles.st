testing
testFiles
	| files file |
	files := model allFiles.
	self assert: files size equals: 5.
	self assert: (files select: [ :each | each belongsTo isNil ]) size equals: 0.
	file := files entityNamed: #'folders/emptyFile'.
	self assert: (file propertyNamed: #totalNumberOfLinesOfText) equals: 1.
	self assert: (file propertyNamed: #numberOfLinesOfText) equals: 1.
	self assert: (file propertyNamed: #numberOfCharacters) equals: 0.
	self assert: (file propertyNamed: #averageNumberOfCharactersPerLine) equals: 0.
	self assert: file numberOfBytes equals: 0.
	self assert: (file propertyNamed: #numberOfBytes) equals: 0.
	self assert: (file propertyNamed: #numberOfKiloBytes) equals: 0.
	file := files entityNamed: #'folders/fileWith9Chars2Lines'.
	self assert: file totalNumberOfLinesOfText equals: 2.
	self assert: (file propertyNamed: #totalNumberOfLinesOfText) equals: 2.
	self assert: (file propertyNamed: #numberOfLinesOfText) equals: 2.
	self assert: (file propertyNamed: #numberOfCharacters) equals: 10.
	self assert: (file propertyNamed: #averageNumberOfCharactersPerLine) equals: 5.0.
	self assert: (file propertyNamed: #numberOfEmptyLinesOfText) equals: 0.
	self assert: (file propertyNamed: #numberOfBytes) < 15.
	file := files entityNamed: #'folders/fileWith9Chars4Lines2EmptyLines'.
	self assert: (file propertyNamed: #totalNumberOfLinesOfText) equals: 4.
	self assert: (file propertyNamed: #numberOfLinesOfText) equals: 2.
	self assert: (file propertyNamed: #numberOfCharacters) equals: 12.
	self assert: (file propertyNamed: #averageNumberOfCharactersPerLine) equals: 6.0.
	self assert: (file propertyNamed: #numberOfEmptyLinesOfText) equals: 2.
	self assert: (file propertyNamed: #numberOfBytes) < 16