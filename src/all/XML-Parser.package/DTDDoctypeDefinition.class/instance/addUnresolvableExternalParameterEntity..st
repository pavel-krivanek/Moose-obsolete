adding
addUnresolvableExternalParameterEntity: aName
	(self parameterEntities includesKey: aName)
		ifTrue: [^ nil].
	^ self parameterEntities
		at: aName
		put: (DTDUnresolvableExternalParameterParsedEntity named: aName).