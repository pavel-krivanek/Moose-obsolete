cache
cacheAt: aSymbol ifAbsentPut: aBlock

	cache ifNil: [ cache := Dictionary new ].
	^(cache
		at: aSymbol
		ifAbsentPut: aBlock) copy