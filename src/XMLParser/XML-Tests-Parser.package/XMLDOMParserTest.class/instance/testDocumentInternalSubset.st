tests
testDocumentInternalSubset
	| document doctypeDeclaration |

	document := XMLDOMParser parse: self internalSubsetWithDeclarations.
	doctypeDeclaration := document doctypeDeclaration.
	doctypeDeclaration allNodesDo: [:each |
		self assert: each document == document].

	document doctypeDeclaration: nil.
	doctypeDeclaration allNodesDo: [:each |
		self assert: each document isNil].