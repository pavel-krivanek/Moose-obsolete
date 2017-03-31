adding
addInternalParameterEntity: aName replacement: aReplacement baseURI: aBaseURIString
	(self parameterEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self parameterEntities
		at: aName
		put:
			(DTDInternalParameterEntity
				name: aName
				replacement: aReplacement
				uri: aBaseURIString).