tests
testDoctypeDeclaration
	| document doctypeDeclaration newDocument |

	document := self newNode.
	self assert: document doctypeDeclaration isNil.

	doctypeDeclaration := XMLDoctypeDeclaration new.
	self
		assert: (document doctypeDeclaration: doctypeDeclaration) == document;
		assert: document doctypeDeclaration == doctypeDeclaration;
		assert: doctypeDeclaration parent == document.

	"adding a doctypeDeclaration from another doc should remove it from the
	other doc"
	newDocument := self newNode.
	self
		assert:
			(newDocument doctypeDeclaration: document doctypeDeclaration) ==
				newDocument;
		assert: newDocument doctypeDeclaration == doctypeDeclaration;
		assert: newDocument doctypeDeclaration parent == newDocument;
		assert: document doctypeDeclaration isNil.

	newDocument doctypeDeclaration: nil.
	self
		assert: newDocument doctypeDeclaration isNil;
		assert: doctypeDeclaration parent isNil.