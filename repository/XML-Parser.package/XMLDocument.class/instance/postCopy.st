copying
postCopy
	super postCopy.

	doctypeDeclaration
		ifNotNil: [doctypeDeclaration := doctypeDeclaration copy].