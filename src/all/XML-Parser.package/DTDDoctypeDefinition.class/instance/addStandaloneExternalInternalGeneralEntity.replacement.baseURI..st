adding
addStandaloneExternalInternalGeneralEntity: aName replacement: aReplacement baseURI: aBaseURIString
	(self generalEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self generalEntities
		at: aName
		put:
			(DTDStandaloneExternalInternalGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: aBaseURIString).