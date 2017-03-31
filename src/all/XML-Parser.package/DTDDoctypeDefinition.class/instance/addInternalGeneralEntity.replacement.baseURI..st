adding
addInternalGeneralEntity: aName replacement: aReplacement baseURI: aBaseURIString
	(self generalEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self generalEntities
		at: aName
		put:
			(DTDInternalGeneralEntity 
				name: aName
				replacement: aReplacement
				uri: aBaseURIString).