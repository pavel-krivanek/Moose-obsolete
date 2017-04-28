query
queryAllFor: anEntity in: aCollection
	"check that aFAMIXClassAssociation is well an incoming association type"

	FAMIXAssociation withAllSubclassesDo: [ :anAssociation | (self query: anAssociation for: anEntity) ifNotNil: [ :tmp | aCollection addAll: tmp asCollection ] ].
	^ aCollection