instance creation
newNodeWithElements
	^ super newNodeWithElements
		doctypeDeclaration: (XMLDoctypeDeclaration new root: 'zero');
		yourself