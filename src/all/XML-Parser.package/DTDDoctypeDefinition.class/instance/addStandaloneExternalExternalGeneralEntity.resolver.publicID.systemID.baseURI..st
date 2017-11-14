adding
addStandaloneExternalExternalGeneralEntity: aName resolver: aResolver publicID: aPublicID systemID: aSystemID baseURI: aBaseURIString
	(self generalEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self generalEntities
		at: aName
		put:
			(DTDStandaloneExternalExternalGeneralParsedEntity
				name: aName
				resolver: aResolver
				publicID: aPublicID
				systemID: aSystemID
				baseURI: aBaseURIString).