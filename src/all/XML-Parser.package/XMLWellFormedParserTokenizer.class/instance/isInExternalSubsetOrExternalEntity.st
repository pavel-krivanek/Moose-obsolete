testing
isInExternalSubsetOrExternalEntity
	"This is used to check for conditional sections and parameter entity
	refs within declarations in the internal subset, which is disallowed.
	
	The way the spec is written and the way Xerces behaves, internal
	entities defined in external entities DO NOT count as 'external'
	for this purpose, even though they were defined externally to
	the document."

	^ state isExternalSubsetState
		or: [self topPushedBackExternalEntity notNil]