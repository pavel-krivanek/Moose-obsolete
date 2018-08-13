tests
testAST
	
	| method ast |

	method := RGMethod named: #someMethod.
	ast := method ast.
	self assert: ast isMethod.
	self assert: ast selector equals: #someMethod.
	

	
	