handling - declaration
generalEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotationName
	self topNode addNode:
		(self nodeFactory generalEntityDeclarationClass
			name: aName
			publicID: aPublicID
			systemID: aSystemID
			ndata: aNotationName)