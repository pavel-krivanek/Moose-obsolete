testing
isEmbeddedInDoctypeDeclaration
	self parent
		ifNil: [^ false]
		ifNotNil: [:parent | ^ parent isDoctypeDeclarationWriter]