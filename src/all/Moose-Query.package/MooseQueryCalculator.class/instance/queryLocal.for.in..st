query
queryLocal: aFAMIXClassAssociation for: anEntity in: aCollection
	"check that aFAMIXClassAssociation is well an incoming association type"
	((self strategy associationTypesFor: anEntity) includes: aFAMIXClassAssociation)
		ifTrue: [ (self strategy msePropertiesOf: anEntity)
				detect: [ :p | p type implementingClass = aFAMIXClassAssociation ]
				ifFound: [ :prop | (anEntity perform: prop name) ifNotNil: [ :coll | aCollection addAll: coll asCollection ] ] ].
	^ aCollection