Trait {
	#name : #FmxMBRelationSideTrait,
	#category : #'Famix-MetamodelBuilder-Core-Traits'
}

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> *- aRelationSide [

	^ self manyToOne: aRelationSide
]

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> *-* aRelationSide [

	^ self manyToMany: aRelationSide
]

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> *-<> aRelationSide [

	^ self manyBelongTo: aRelationSide
	
]

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> - aRelationSide [

	^ self oneToOne: aRelationSide
]

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> -* aRelationSide [

	^ self oneToMany: aRelationSide
]

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> -<> aRelationSide [

	^ self oneBelongsTo: aRelationSide

	
]

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> <>- aRelationSide [

	^ self containsOne: aRelationSide
	
]

{ #category : #'relations - arrows' }
FmxMBRelationSideTrait >> <>-* aRelationSide [

	^ self containsMany: aRelationSide
	

	
]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> containsMany: aRelationSide [

	| aRelation |
	
	aRelation := self oneToMany: aRelationSide.
	aRelation right container.
			
	^ aRelation
	
]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> containsOne: aRelationSide [

	| aRelation |
	
	aRelation := self oneToOne: aRelationSide.
	aRelation right container.
			
	^ aRelation
	
]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> manyBelongTo: aRelationSide [

	| aRelation |
	
	aRelation := self manyToOne: aRelationSide.
	aRelation left container.
			
	^ aRelation

]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> manyToMany: aRelationSide [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self property: aRelationSide pluralPropertyName. 
	oppositeSide := aRelationSide property: self pluralPropertyName. 	
	ownSide many.
	oppositeSide many.
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> manyToOne: aRelationSide [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self property: self ownerPropertyName. 
	oppositeSide := aRelationSide property: self pluralPropertyName. 	
	oppositeSide many.
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> oneBelongsTo: aRelationSide [

	| aRelation |
	
	aRelation := self oneToOne: aRelationSide.
	aRelation left container.
			
	^ aRelation

]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> oneToMany: aRelationSide [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self property: aRelationSide pluralPropertyName. 
	oppositeSide := aRelationSide property: aRelationSide ownerPropertyName. 	
	ownSide many.
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]

{ #category : #'relations - named' }
FmxMBRelationSideTrait >> oneToOne: aRelationSide [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self property: aRelationSide propertyName. 
	oppositeSide := aRelationSide property: self propertyName.
	 	
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]
