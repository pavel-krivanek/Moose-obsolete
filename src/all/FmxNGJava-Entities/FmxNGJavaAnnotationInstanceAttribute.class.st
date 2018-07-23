Class {
	#name : #FmxNGJavaAnnotationInstanceAttribute,
	#superclass : #FmxNGJavaSourcedEntity,
	#traits : 'FmxNGTAnnotationInstanceAttribute + FmxNGTTypedAnnotationInstanceAttribute + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTAnnotationInstanceAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAnnotationInstanceAttribute class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstanceAttribute super: #FmxNGJavaSourcedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAnnotationInstanceAttribute class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAnnotationInstanceAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAnnotationInstanceAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstanceAttribute FmxNGTTypedAnnotationInstanceAttribute)
]

{ #category : #meta }
FmxNGJavaAnnotationInstanceAttribute class >> requirements [

	<generated>
	^ { FmxNGJavaAnnotationInstance }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationInstanceAttribute >> name [ 
	^ self annotationTypeAttribute notNil 
		ifTrue: [ self annotationTypeAttribute name ]
		ifFalse: [ nil ]
]
