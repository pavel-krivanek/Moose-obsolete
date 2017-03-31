handling - declaration
generalEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotationName
	super
		generalEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID
		ndata: aNotationName.

	self interruptOn = #generalEntityDeclaration:publicID:systemID:ndata:
		ifTrue: [self interruptParsing].