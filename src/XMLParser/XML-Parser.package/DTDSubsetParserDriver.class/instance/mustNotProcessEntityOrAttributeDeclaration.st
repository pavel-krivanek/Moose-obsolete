testing
mustNotProcessEntityOrAttributeDeclaration
	"'Except when standalone=''yes'', they (non-validating parsers) MUST NOT
	process entity declarations or attribute-list declarations encountered
	after a reference to a parameter entity that is not read...'"
	^ self isValidating not
		and: [self isStandalone not
			and: [self hasSkippedParameterEntityReferences]]