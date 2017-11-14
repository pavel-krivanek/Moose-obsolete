enumerating
associationsSelect: aBlock
	^ self copyEmpty setAttributeDictionary:
		(attributeDictionary associationsSelect: aBlock)