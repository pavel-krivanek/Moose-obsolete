tests
test2
	self parse: self file2.

	self assert: result simpleName = 'Foo'.
	self assert: result methodDeclarations size = 2.
	
	self assert: result methodDeclarations first simpleName = 'methodA'.
	self assert: result methodDeclarations second simpleName = 'methodB'.	