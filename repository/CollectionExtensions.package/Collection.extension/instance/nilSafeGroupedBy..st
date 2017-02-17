*CollectionExtensions
nilSafeGroupedBy: aBlock
	^ self groupedBy: [ :each |
		| value |
		value := aBlock value: each.
		value ifNil: [ UndefinedObject ].
	]	