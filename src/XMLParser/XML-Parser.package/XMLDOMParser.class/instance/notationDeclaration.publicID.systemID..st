handling - declaration
notationDeclaration: aName publicID: aPublicID systemID: aSystemID
	self topNode addNode:
		(self nodeFactory notationDeclarationClass
			name: aName
			publicID: aPublicID
			systemID: aSystemID)