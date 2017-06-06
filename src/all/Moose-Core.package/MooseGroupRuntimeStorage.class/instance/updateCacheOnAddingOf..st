private
updateCacheOnAddingOf: anElement
	| key group |
	key := anElement class.
	group := byType
		at: key
		ifAbsentPut: [ self class byTypeDefaultCollection ].
	group add: anElement.
	self sortedCollectionList at: key put: false.
	anElement hasUniqueMooseNameInModel
		ifTrue: [ byName at: anElement mooseName asSymbol put: anElement ].
	^ anElement