tests
test7
	self parse: self file7.

	self assert: result simpleName = 'Class'.
	self assert: result methodDeclarations size = 3.
	
	self assert: (result methodDeclarations anySatisfy: [ :e | e simpleName = 'toString' ]).
	self assert: (result methodDeclarations anySatisfy: [ :e | e simpleName = 'getAnnotationType' ]).
	self assert: (result methodDeclarations anySatisfy: [ :e | e simpleName = 'registerNatives' ]).
