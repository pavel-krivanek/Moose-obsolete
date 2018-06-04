"
FamixMetamodelBuilderRelation
"
Class {
	#name : #FamixMetamodelBuilderRelation,
	#superclass : #Object,
	#instVars : [
		'side',
		'oppositeSide',
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderRelation >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> cardinalityString [ 

	^ String streamContents: [ :s |
		self from cardinality = #many 
			ifTrue: [ s nextPutAll: '*' ]
			ifFalse: [ s nextPutAll: '1' ].
		s nextPutAll: '..'.
		self to cardinality = #many 
			ifTrue: [ s nextPutAll: '*' ]
			ifFalse: [ s nextPutAll: '1' ] ]
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> from [

	^ side 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> from: aBlock [

	side := (FamixMetamodelBuilderRelationSide new
		relation: self;
		builder: self builder;
		yourself).
	aBlock cull: side.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> left [

	^ side 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeRelation [

	^ self copy swapSides
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeSide [
	^ oppositeSide
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeSide: anObject [
	oppositeSide := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> right [

	^ oppositeSide 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> shortCardinalityString [ 

	^ self from cardinality = #many 
		ifTrue: [ '*' ]
		ifFalse: [ '' ]
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> side [

	^ side
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> side: anObject [
	side := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> sides [

	^ { side. oppositeSide }
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> swapSides [

	| temp |
	temp := oppositeSide.
	oppositeSide := side.
	side := temp
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> to [

	^ oppositeSide 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> to: aBlock [

	oppositeSide := (FamixMetamodelBuilderRelationSide new
		relation: self;
		builder: self builder;
		yourself).
	aBlock cull: oppositeSide.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> withNavigation [

	self sides do: [ :aSide |
		aSide withNavigation ]
]
