initialization
initialize
	super initialize.

	externalSubsetReadLimit := self class defaultExternalSubsetReadLimit.
	maxExternalEntities := self class defaultMaxExternalEntities.
	maxExternalEntitySize := self class defaultMaxExternalEntitySize.
	resolvesLocalFromNonLocal := false.