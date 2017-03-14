tests
testHasDoctypeDeclaration
	| document |

	document := self newNode.
	self deny: document hasDoctypeDeclaration.

	document doctypeDeclaration: XMLDoctypeDeclaration new.	
	self assert: document hasDoctypeDeclaration.

	document doctypeDeclaration: nil.
	self deny: document hasDoctypeDeclaration.