query
queryAllFor: anEntity
	| coll |
	coll := OrderedCollection new.
	"check that aFAMIXClassAssociation is well an incoming association type"
	FAMIXAssociation
		withAllSubclassesDo: [ :anAssociation | 
			| tmp |
			tmp := self query: anAssociation for: anEntity.
			(tmp isNotNil and: [ tmp isNotEmpty ])
				ifTrue: [ coll add: tmp ] ].
	^ self strategy queryResultOn: anEntity with: {coll} flattened