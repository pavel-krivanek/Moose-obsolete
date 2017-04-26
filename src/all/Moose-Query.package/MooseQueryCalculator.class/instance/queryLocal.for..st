query
queryLocal: aFAMIXClassAssociation for: anEntity
	| coll |
	coll := OrderedCollection new.

	"check that aFAMIXClassAssociation is well an incoming association type"
	((self strategy associationTypesFor: anEntity) includes: aFAMIXClassAssociation)
		ifTrue: [ | tmp |
			tmp := anEntity perform: ((self strategy msePropertiesOf: anEntity) detect: [ :p | p type implementingClass = aFAMIXClassAssociation ]) name.
			(tmp isNotNil and: [ tmp isNotEmpty ])
				ifTrue: [ coll add: tmp ] ].
	^ self strategy queryResultOn: anEntity with: {coll} flattened