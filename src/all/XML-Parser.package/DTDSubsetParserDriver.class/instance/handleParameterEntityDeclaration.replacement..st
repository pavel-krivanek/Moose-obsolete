handling - dtd
handleParameterEntityDeclaration: aName replacement: aReplacement
	self mustSkipEntityAndAttributeDeclarations
		ifFalse: [
			self doctypeDefinition
				addInternalParameterEntity: aName
				replacement:aReplacement
				baseURI: self baseURI]