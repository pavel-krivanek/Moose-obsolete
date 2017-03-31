handling - lexical
startDTD: aRootElementName publicID: aPublicID systemID: aSystemID
	super
		startDTD: aRootElementName
		publicID: aPublicID
		systemID: aSystemID.

	self interruptOn = #startDTD:publicID:systemID:
		ifTrue: [self interruptParsing].