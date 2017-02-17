accessing
typesForClass: aClass instvar: instvar
	^(self typesForClass: aClass)
		at: instvar
		ifAbsent:
			[ExtractedType
				forInstvar: instvar
				inClass: aClass]