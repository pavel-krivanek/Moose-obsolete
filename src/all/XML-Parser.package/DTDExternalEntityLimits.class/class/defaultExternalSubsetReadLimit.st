accessing
defaultExternalSubsetReadLimit
	^ XMLParserLimits defaultReadLimit
		ifNotNil: [:limit | (limit / 4) asInteger]