Class {
	#name : #FmxNGJavaAnnotationType,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTAnnotationType',
	#classTraits : 'FmxNGTAnnotationType classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAnnotationType class >> annotation [

	<MSEClass: #AnnotationType super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAnnotationType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAnnotationType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAnnotationType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationType)
]

{ #category : #meta }
FmxNGJavaAnnotationType class >> requirements [

	<generated>
	^ { FmxNGJavaContainerEntity }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationType >> annotatedEntities [
	^ self instances collect: [:each | each annotatedEntity ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationType >> annotatedEntitiesGroup [
	<navigation: 'Annotated entities'>
	^ self annotatedEntities asMooseGroup
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationType >> belongsTo [
	^ self annotationTypesContainer
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationType >> typeContainer [

	^ self annotationTypesContainer
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationType >> typeContainer: anObject [

	^ self annotationTypesContainer: anObject
]
