private
typeNamed: aTypeName ifNone: aBlock
	^ typesByName
		at: aTypeName
		ifAbsent: aBlock