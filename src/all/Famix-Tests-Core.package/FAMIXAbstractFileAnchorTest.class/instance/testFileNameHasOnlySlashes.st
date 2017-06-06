tests
testFileNameHasOnlySlashes
	self 
		assert: (self actualClass new fileName: 'a\b/c\d/ef') fileName
		equals: 'a/b/c/d/ef'