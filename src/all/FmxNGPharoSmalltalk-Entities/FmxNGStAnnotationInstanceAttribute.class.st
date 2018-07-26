Class {
	#name : #FmxNGStAnnotationInstanceAttribute,
	#superclass : #FmxNGStSourcedEntity,
	#traits : 'FmxNGTAnnotationInstanceAttribute + FmxNGTTypedAnnotationInstanceAttribute + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FmxNGTAnnotationInstanceAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAnnotationInstanceAttribute class >> annotation [

	<MSEClass: #AnnotationInstanceAttribute super: #FmxNGStSourcedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAnnotationInstanceAttribute class >> generatedSlotNames [
	<generated>
	'FmxNGStAnnotationInstanceAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAnnotationInstanceAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstanceAttribute FmxNGTTypedAnnotationInstanceAttribute TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxNGStAnnotationInstanceAttribute class >> requirements [

	<generated>
	^ { FmxNGStAnnotationInstance }
]

{ #category : #'as yet unclassified' }
FmxNGStAnnotationInstanceAttribute class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := nil.
	parentSelectors := nil.

]

{ #category : #accessing }
FmxNGStAnnotationInstanceAttribute >> name [ 
	^ self annotationTypeAttribute notNil 
		ifTrue: [ self annotationTypeAttribute name ]
		ifFalse: [ nil ]
]
