handling - declaration
parameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self topNode addNode:
		(self nodeFactory parameterEntityDeclarationClass
			name: aName
			publicID: aPublicID
			systemID: aSystemID)