accessing
typeNamed: aTypeName
	^ self
		typeName: aTypeName
		ifNone: [self errorUnrecognizedTypeName: aTypeName]