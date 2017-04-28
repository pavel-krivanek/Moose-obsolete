query
queryAllLocalFor: anEntity in: aCollection
	"check that aFAMIXClassAssociation is well an incoming association type"

	(self strategy associationTypesFor: anEntity) do: [ :anAssociation | (self queryLocal: anAssociation for: anEntity) ifNotNil: [ :tmp | aCollection addAll: tmp asCollection ] ].
	^ aCollection