tests
testFileNameHasOnlySlashes
	self 
		assert: (FAMIXFileAnchor new fileName: 'a\b/c\d/ef') fileName
		equals: 'a/b/c/d/ef'