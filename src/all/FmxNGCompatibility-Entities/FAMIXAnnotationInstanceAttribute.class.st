Class {
	#name : #FAMIXAnnotationInstanceAttribute,
	#superclass : #FAMIXSourcedEntity,
	#traits : 'FmxNGTAnnotationInstanceAttribute + FmxNGTTypedAnnotationInstanceAttribute + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTAnnotationInstanceAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#classInstVars : [
		'#childrenSelectors',
		'#allParentTypes',
		'#allChildrenTypes',
		'#parentSelectors'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #accessing }
FAMIXAnnotationInstanceAttribute class >> allIncomingAssociationTypes [
   ^ self privateAllIncomingAssociationTypes
]

{ #category : #accessing }
FAMIXAnnotationInstanceAttribute class >> allOutgoingAssociationTypes [
	^ self privateAllOutgoingAssociationTypes
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #meta }
FAMIXAnnotationInstanceAttribute class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstanceAttribute super: #FAMIXSourcedEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #generator }
FAMIXAnnotationInstanceAttribute class >> generatedSlotNames [
	<generated>
	'FAMIXAnnotationInstanceAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXAnnotationInstanceAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstanceAttribute FmxNGTTypedAnnotationInstanceAttribute)
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> incomingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #meta }
FAMIXAnnotationInstanceAttribute class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := nil.
	parentSelectors := nil.
	allChildrenTypes := nil.
	allParentTypes := nil
]

{ #category : #accessing }
FAMIXAnnotationInstanceAttribute >> name [ 
	^ self annotationTypeAttribute notNil 
		ifTrue: [ self annotationTypeAttribute name ]
		ifFalse: [ nil ]
]
