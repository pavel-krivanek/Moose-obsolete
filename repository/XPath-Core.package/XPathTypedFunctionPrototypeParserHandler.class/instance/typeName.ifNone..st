accessing
typeName: aTypeName ifNone: aBlock
	^ typesByName
		at: aTypeName
		ifAbsent: aBlock