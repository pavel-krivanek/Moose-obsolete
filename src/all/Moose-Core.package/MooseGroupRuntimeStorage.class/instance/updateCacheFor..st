adding
updateCacheFor: anElement
	| key group |
	key := anElement class.
	group := byType 
		at: key
		ifAbsentPut: [ OrderedCollection new ].
	group add: anElement.
	anElement hasUniqueMooseNameInModel
		ifTrue: [ byName at: anElement mooseName asSymbol put: anElement ].
	^ anElement