handling - dtd
handleElementDeclaration: aName contentModel: aContentModel
	super
		handleElementDeclaration: aName
		contentModel: aContentModel.

	self saxHandler
		elementDeclaration: aName
		contentModel: aContentModel.