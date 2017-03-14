handling
handleGeneralEntityReference: aName
	| entity |

	entity :=
		self doctypeDefinition
			generalEntityAt: aName
			ifAbsent: [
				"WFC: In a document without any DTD, a document with only an
				internal DTD subset which contains no parameter entity references,
				or a document with ''standalone='yes''', for an entity reference
				that does not occur within the external subset or a parameter
				entity (meaning outside a DTD)..."
				(self isHandlingDTD not
					and: [
						"true if no DTD or it's internal and no param entity refs"
						(self hasExternalSubset not
							and: [self hasParameterEntityReferences not])
								or: [self isStandalone]])
						ifTrue: [self errorUndeclaredGeneralEntityReference: aName].
				self isValidating
					ifTrue: [self errorInvalidUndeclaredGeneralEntityReference: aName].
				^ nil].

	"these can be referenced in attribute default value
	declarations, but nowhere outside the DTD"
	(entity isStandaloneExternal
		and: [self isValidating
			and: [self isHandlingDTD not]])
		ifTrue: [self errorReferenceToStandaloneExternalEntity: entity].

	^ entity.