handling - dtd
handleParameterEntityDeclaration: aName replacement: aReplacement
	self mustNotProcessEntityOrAttributeDeclaration
		ifFalse: [
			self doctypeDefinition
				addInternalParameterEntity: aName
				replacement:aReplacement
				baseURI: self baseURI]