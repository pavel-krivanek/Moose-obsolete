adding
addInternalParameterEntity: aName replacement: aReplacement baseURI: aBaseURIString
	(self parameterEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self parameterEntities
		at: aName
		put:
			(DTDInternalParameterParsedEntity
				name: aName
				replacement: aReplacement
				uri: aBaseURIString).