"
FamixMetamodelBuilderClassAlias
"
Class {
	#name : #FmxMBClassAlias,
	#superclass : #Object,
	#traits : 'FmxMBRelationSideTrait',
	#classTraits : 'FmxMBRelationSideTrait classTrait',
	#instVars : [
		'subject',
		'trait'
	],
	#category : #'Famix-MetamodelBuilder-Core-Implementation'
}

{ #category : #accessing }
FmxMBClassAlias >> addRelation: aRelation with: anotherClass [

	^ self subject addRelation: aRelation with: anotherClass
]

{ #category : #testing }
FmxMBClassAlias >> isMetamodelClass [

	^ false
]

{ #category : #testing }
FmxMBClassAlias >> isMetamodelTrait [

	^ false
]

{ #category : #accessing }
FmxMBClassAlias >> link: link1 throughAssociation: anAssociationEntity link: link2 with: otherEntity [

"(behavior as: #TWithAccesses)
	link: #accesses -> #accessor
	throughAssociation: (access as: #TAccess) 
	link: #variable <- #icomingAcesses
	with: (variable as: #TAccessible)"
	
	| rel side1 side2 side3 side4 |
	rel := self subject builder newRelation
	from: [ :side |
		side1 := side name: (link1 value);
			relatedEntity: anAssociationEntity;
			one; 
			source	 ];
	to: [ :opposite |
		side2 := opposite name: link1 key;
			trait: self trait;
			many ].
			
	anAssociationEntity addRelation: rel with: self subject.		
			
	rel := self subject builder newRelation
		from: [ :side |
			side3 := side name: link2 value;
				relatedEntity: anAssociationEntity;
				one;
				target	 ];
		to: [ :opposite |
			side4 := opposite 	name: link2 key;
				relatedEntity: otherEntity;
				many ].
			
	anAssociationEntity addRelation: rel with: otherEntity subject.		
	
	^ { side1. side2. side3. side4 }

]

{ #category : #accessing }
FmxMBClassAlias >> property: propertyName type: aTypeName [

	^ self trait property: propertyName type: aTypeName
]

{ #category : #'as yet unclassified' }
FmxMBClassAlias >> relatedEntityName [

	^ self relatedEntity name
]

{ #category : #accessing }
FmxMBClassAlias >> subject [
	^ subject
]

{ #category : #accessing }
FmxMBClassAlias >> subject: anObject [
	subject := anObject
]

{ #category : #accessing }
FmxMBClassAlias >> trait [
	^ trait
]

{ #category : #accessing }
FmxMBClassAlias >> trait: anObject [
	trait := anObject
]

{ #category : #accessing }
FmxMBClassAlias >> traitName [

	^ self trait name
]
