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
				(general) that does not occur within the external subset or a
				parameter entity (meaning DTD 'external')"
				self isExternal
					ifFalse: [
						((self hasExternalSubset not
							and: [self hasParameterEntityReferences not])
								or: [self isStandalone])
							ifTrue: [self errorUndeclaredGeneralEntityReference: aName]].
				"all general entity refs must be declared when validating"
				self isValidating
					ifTrue: [self errorInvalidUndeclaredGeneralEntityReference: aName].
				^ nil].

	"'VC: Standalone Document Declaration
		The standalone document declaration MUST have the value 'no' if any
		external markup declarations contain declarations of:
			...
		entities ... if references to those entities appear in the document'
	LibXML2 doesn't flag these at all, and Xerces only does for references
	in the content, but the specification says in the 'document', so we
	consider all non-external references, even inside the DTD internal subset"
	(entity isStandaloneExternal
		and: [self isValidating
			and: [self isExternal not]])
		ifTrue: [self errorReferenceToStandaloneExternalEntity: entity].

	^ entity.