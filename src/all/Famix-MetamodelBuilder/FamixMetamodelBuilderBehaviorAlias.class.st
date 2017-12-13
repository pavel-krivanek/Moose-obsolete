Class {
	#name : #FamixMetamodelBuilderBehaviorAlias,
	#superclass : #Object,
	#instVars : [
		'subject',
		'trait'
	],
	#category : #'Famix-MetamodelBuilder'
}

{ #category : #accessing }
FamixMetamodelBuilderBehaviorAlias >> link: link1 throughAssociation: anAssociationAlias link: link2 with: anAlias [

"(behavior as: #TWithAccesses)
	link: #accesses -> #accessor
	throughAssociation: (access as: #TAccess) 
	link: #variable -> #icomingAcesses
	with: (variable as: #TAccessible)"
	
	| rel |
	rel := self subject builder newRelation
	from: [ :side |
		side name: (link1 value);
			trait: anAssociationAlias trait;
			one	 ];
	to: [ :opposite |
		opposite 	name: link1 key;
			trait: self trait;
			many ].
			
	anAssociationAlias subject addRelation: rel with: self subject.		
			
	rel := self subject builder newRelation
		from: [ :side |
			side name: link2 key;
				trait: anAssociationAlias trait;
				one	 ];
		to: [ :opposite |
			opposite 	name: link2 value;
				trait: anAlias trait;
				many ].
			
	anAssociationAlias subject addRelation: rel with: anAlias subject.		
			

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
