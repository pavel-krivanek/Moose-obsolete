tests
test4
	self parse: self file4.

	self assert: result simpleName = 'Class'.
	self assert: result methodDeclarations size = 2.
	
	self assert: (result methodDeclarations anySatisfy: [ :e | e simpleName = 'registerNatives' ]).
	self assert: (result methodDeclarations anySatisfy: [ :e | e simpleName = 'toString' ]).