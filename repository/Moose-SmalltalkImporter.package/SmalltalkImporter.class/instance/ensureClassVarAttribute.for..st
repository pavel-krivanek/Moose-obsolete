public-entity-creation
ensureClassVarAttribute: name for: aClass


	^(self scopeOfClass: aClass)
			at: name
			ifAbsent:
				[self
					createClassVarAttribute: name
					for: aClass]