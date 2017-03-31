tests
test5
	self parse: self file5.

	self assert: result simpleName = 'Foo'.
	self assert: result methodDeclarations size = 1.
	
	"self assert: result second first = 'Foo'."
	self assert: result methodDeclarations first simpleName = 'toString'.	