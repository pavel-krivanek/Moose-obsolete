Class {
	#name : #FAMIXAnnotationInstanceAttribute,
	#superclass : #FAMIXSourcedEntity,
	#traits : 'FmxNGTAnnotationInstanceAttribute + FmxNGTTypedAnnotationInstanceAttribute + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTAnnotationInstanceAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAnnotationInstanceAttribute class >> annotation [

	<MSEClass: #AnnotationInstanceAttribute super: #FAMIXSourcedEntity>
	<package: #FAMIX>
	<generated>
	^self
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
	^ #(FmxNGTAnnotationInstanceAttribute FmxNGTTypedAnnotationInstanceAttribute TDependencyQueries TEntityMetaLevelDependency)
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

{ #category : #meta }
FAMIXAnnotationInstanceAttribute class >> requirements [

	<generated>
	^ { FAMIXAnnotationInstance }
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAnnotationInstanceAttribute class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	self resetTEntityMetaLevelDependencyCaches.

]

{ #category : #accessing }
FAMIXAnnotationInstanceAttribute >> belongsTo [

	<generated>
	^ self parentAnnotationInstance

]

{ #category : #accessing }
FAMIXAnnotationInstanceAttribute >> belongsTo: anObject [

	<generated>
	self parentAnnotationInstance: anObject

]

{ #category : #'as yet unclassified' }
FAMIXAnnotationInstanceAttribute >> name [ 
	^ self annotationTypeAttribute notNil 
		ifTrue: [ self annotationTypeAttribute name ]
		ifFalse: [ nil ]
]
