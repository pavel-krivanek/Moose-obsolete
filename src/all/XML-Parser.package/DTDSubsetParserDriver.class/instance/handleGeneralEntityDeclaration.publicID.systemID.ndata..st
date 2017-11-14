handling - dtd
handleGeneralEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotation
	self mustSkipEntityAndAttributeDeclarations
		ifTrue: [^ self].

	aNotation isEmpty
		ifTrue: [
			self resolvesExternalEntities
				ifTrue: [
					self isStandaloneExternal
						ifTrue: [
							self doctypeDefinition
								addStandaloneExternalExternalGeneralEntity: aName
								resolver: self externalEntityResolver
								publicID: aPublicID
								systemID: aSystemID
								baseURI: self baseURI]
						ifFalse: [
							self doctypeDefinition
								addExternalGeneralEntity: aName
								resolver: self externalEntityResolver
								publicID: aPublicID
								systemID: aSystemID
								baseURI: self baseURI]]
				ifFalse: [
					self isValidating
						ifTrue: [
							self doctypeDefinition
								addUnresolvableExternalGeneralEntity: aName]]]
		ifFalse: [
			self doctypeDefinition
				addUnparsedEntity: aName
				publicID: aPublicID
				systemID: aSystemID
				ndata: aNotation].