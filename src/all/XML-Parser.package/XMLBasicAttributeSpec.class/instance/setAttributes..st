initialization
setAttributes: aDictionaryOrCollectionOfAssociationsAndStrings
	attributeSpec removeAll.

	"associationsDo: works for dictionaries and non-dictionaries, including
	arrays, to support specs like {'one'. 'two'->'three'}"
	aDictionaryOrCollectionOfAssociationsAndStrings associationsDo: [:each |
		each isString
			ifTrue: [self addAttribute: each]
			ifFalse: [self addAttributeAssociation: each]].