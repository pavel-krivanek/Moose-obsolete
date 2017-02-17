handling - dtd
handleNotationDeclaration: aName publicID: aPublicID systemID: aSystemID
	super
		handleNotationDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.

	self saxHandler
		notationDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.