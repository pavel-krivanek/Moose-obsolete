tests
test1
	self parse: self file1.
	self assert: result simpleName = 'Foo'.
	self assert: result methodDeclarations size = 0.