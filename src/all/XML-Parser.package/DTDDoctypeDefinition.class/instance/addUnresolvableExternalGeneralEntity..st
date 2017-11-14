adding
addUnresolvableExternalGeneralEntity: aName
	(self generalEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self generalEntities
		at: aName
		put: (DTDUnresolvableExternalGeneralParsedEntity named: aName).