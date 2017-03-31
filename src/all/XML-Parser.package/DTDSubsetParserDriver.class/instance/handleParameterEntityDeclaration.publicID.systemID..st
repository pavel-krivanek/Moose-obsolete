handling - dtd
handleParameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self mustNotProcessEntityOrAttributeDeclaration
		ifFalse: [
			self resolvesExternalEntities
				ifTrue: [
					self doctypeDefinition
						addExternalParameterEntity: aName
						resolver: self externalEntityResolver
						publicID: aPublicID
						systemID: aSystemID
						baseURI: self baseURI]
				ifFalse: [
					self isValidating
						ifTrue: [
							self doctypeDefinition
								addUnresolvableExternalParameterEntity: aName]]]