"
FamixMetamodelBuilderBehaviorAlias
"
Class {
	#name : #FamixMetamodelBuilderBehaviorAlias,
	#superclass : #Object,
	#instVars : [
		'subject',
		'trait'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> link: link1 throughAssociation: anAssociationAlias link: link2 with: anAlias [

"(behavior as: #TWithAccesses)
	link: #accesses -> #accessor
	throughAssociation: (access as: #TAccess) 
	link: #variable <- #icomingAcesses
	with: (variable as: #TAccessible)"
	
	| rel side1 side2 side3 side4 |
	rel := self subject builder newRelation
	from: [ :side |
		side1 := side name: (link1 value);
			trait: anAssociationAlias trait;
			one; 
			source	 ];
	to: [ :opposite |
		side2 := opposite name: link1 key;
			trait: self trait;
			many ].
			
	anAssociationAlias subject addRelation: rel with: self subject.		
			
	rel := self subject builder newRelation
		from: [ :side |
			side3 := side name: link2 value;
				trait: anAssociationAlias trait;
				one;
				target	 ];
		to: [ :opposite |
			side4 := opposite 	name: link2 key;
				trait: anAlias trait;
				many ].
			
	anAssociationAlias subject addRelation: rel with: anAlias subject.		
	
	^ { side1. side2. side3. side4 }

]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> property: propertyName type: aTypeName [

	^ self trait property: propertyName type: aTypeName
]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> subject [
	^ subject
]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> subject: anObject [
	subject := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> trait [
	^ trait
]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> trait: anObject [
	trait := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> traitName [

	^ self trait name
]
