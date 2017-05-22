query
queryLocal: aFAMIXClassAssociation for: anEntity in: aCollection
	"check that aFAMIXClassAssociation is well an incoming association type"

	((self strategy associationTypesFor: anEntity) includes: aFAMIXClassAssociation) ifFalse: [ ^ aCollection ].
	
	"I know that we could use #detect:ifFound: here, but this algo takes too long on big model, so this is a speed up while the sista vm is not ready for production"
	(self strategy msePropertiesOf: anEntity)
		do: [ :prop | 
			prop type implementingClass = aFAMIXClassAssociation
				ifTrue: [ (anEntity perform: prop name)
						ifNotNil: [ :coll | 
							aCollection addAll: coll asCollection.
							^ aCollection ] ] ]