adding
addExternalParameterEntity: aName resolver: aResolver publicID: aPublicID systemID: aSystemID baseURI: aBaseURIString
	(self parameterEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self parameterEntities
		at: aName
		put:
			(DTDExternalParameterParsedEntity
				name: aName
				resolver: aResolver
				publicID: aPublicID
				systemID: aSystemID
				baseURI: aBaseURIString).