handling - declaration
elementDeclaration: anElementName contentModel: aContentModel
	super
		elementDeclaration: anElementName
		contentModel: aContentModel.

	self interruptOn = #elementDeclaration:contentModel:
		ifTrue: [self interruptParsing].