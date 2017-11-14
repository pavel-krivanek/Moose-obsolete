adding
addInternalGeneralEntity: aName replacement: aReplacement baseURI: aBaseURIString
	(self generalEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self generalEntities
		at: aName
		put:
			(DTDInternalGeneralParsedEntity 
				name: aName
				replacement: aReplacement
				uri: aBaseURIString).