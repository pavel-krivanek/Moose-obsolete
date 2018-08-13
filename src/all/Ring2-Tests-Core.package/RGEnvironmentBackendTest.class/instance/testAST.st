tests
testAST

	| method anAst |
	
	method := RGMethod new.
	method sourceCode: 'someMethod ^ true'.
	anAst := method ast.
	self assert: (anAst isMethod).
	self assert: (anAst lastIsReturn)

