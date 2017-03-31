private
typeNamed: aTypeName
	^ self
		typeNamed: aTypeName
		ifNone: [self errorUnrecognizedTypeName: aTypeName]