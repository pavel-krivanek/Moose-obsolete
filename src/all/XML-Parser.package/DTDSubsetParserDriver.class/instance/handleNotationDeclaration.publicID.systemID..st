handling - dtd
handleNotationDeclaration: aName publicID: aPublicID systemID: aSystemID
	(self doctypeDefinition
		addNotation: aName
		publicID: aPublicID
		systemID: aSystemID)
		ifNil: [
			self isValidating
				ifTrue: [self errorMultipleDeclarationsForNotation: aName]]