removing
remove: anElement ifAbsent: exceptionBlock
	| key group |
	key := anElement class.
	group := byType at: key ifAbsent: [ OrderedCollection new ].
	group remove: anElement ifAbsent: exceptionBlock.
	byName removeKey: anElement mooseName asSymbol ifAbsent: exceptionBlock.
	elements remove: anElement.
	^ anElement