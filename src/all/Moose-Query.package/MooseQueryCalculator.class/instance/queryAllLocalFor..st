query
queryAllLocalFor: anEntity
	| coll |
	coll := OrderedCollection new.
	"check that aFAMIXClassAssociation is well an incoming association type"
	(self strategy associationTypesFor: anEntity)
		do: [ :anAssociation | 
			| tmp |
			tmp := self queryLocal: anAssociation for: anEntity.
			(tmp isNotNil and: [ tmp isNotEmpty ])
				ifTrue: [ coll add: tmp ] ].
	^ self strategy queryResultOn: anEntity with: {coll} flattened