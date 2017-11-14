enumerating
select: aBlock
	^ self copyEmpty setAttributeDictionary:
		(attributeDictionary select: aBlock)