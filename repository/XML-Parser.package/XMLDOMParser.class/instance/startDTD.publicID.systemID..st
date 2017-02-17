handling - lexical
startDTD: aRootElementName publicID: aPublicID systemID: aSystemID
	| doctypeDeclaration |

	doctypeDeclaration := 
		self nodeFactory doctypeDeclarationClass
			root: aRootElementName
			publicID: aPublicID
			systemID: aSystemID.
	self pushNode: doctypeDeclaration.
	self document doctypeDeclaration: doctypeDeclaration.