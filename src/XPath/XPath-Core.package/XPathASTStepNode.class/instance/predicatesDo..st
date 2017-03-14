enumerating
predicatesDo: aBlock
	predicates
		ifNotNil: [predicates do: aBlock]