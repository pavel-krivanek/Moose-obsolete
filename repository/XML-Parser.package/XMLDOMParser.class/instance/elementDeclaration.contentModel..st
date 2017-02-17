handling - declaration
elementDeclaration: anElementName contentModel: aContentModel
	self topNode addNode:
		(self nodeFactory elementDeclarationClass
			element: anElementName
			contentModel: aContentModel)