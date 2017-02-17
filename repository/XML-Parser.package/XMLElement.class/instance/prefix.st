accessing
prefix
	"Returns the prefix of the receiver's name or an empty string if there
	isn't one."

	"this is recomputed from the qualified and local name instead of being
	stored in an inst var to save memory."
	^ self name xmlPrefixBeforeLocalName: self localName