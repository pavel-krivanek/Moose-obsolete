public-entity-creation
ensureImplicitVariable: name inClass: aClass
	
	^(self scopeOfClass: aClass)
		at: name
		ifAbsent:
			[self
				createSpecialVariable: name
				forClass: aClass]