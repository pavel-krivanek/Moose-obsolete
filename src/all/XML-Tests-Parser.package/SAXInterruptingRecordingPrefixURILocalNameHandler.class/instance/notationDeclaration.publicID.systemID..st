handling - declaration
notationDeclaration: aName publicID: aPublicID systemID: aSystemID
	super
		notationDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.

	self interruptOn = #notationDeclaration:publicID:systemID:
		ifTrue: [self interruptParsing].