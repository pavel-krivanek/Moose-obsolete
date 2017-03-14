handling - dtd
handleGeneralEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotation
	super
		handleGeneralEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID
		ndata: aNotation.

	self saxHandler
		generalEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID
		ndata: aNotation.