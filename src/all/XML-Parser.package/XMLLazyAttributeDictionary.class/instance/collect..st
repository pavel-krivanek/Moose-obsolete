enumerating
collect: aBlock
	^ self copyEmpty setAttributeDictionary:
		(attributeDictionary collect: aBlock)