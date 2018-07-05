Class {
	#name : #FAMIXAnnotationType,
	#superclass : #FAMIXType,
	#traits : 'FmxNGTAnnotationType',
	#classTraits : 'FmxNGTAnnotationType classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAnnotationType class >> annotation [

	<generated>
	<MSEClass: #AnnotationType super: #FAMIXType>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXAnnotationType class >> generatedSlotNames [
	<generated>
	'FAMIXAnnotationType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXAnnotationType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationType)
]

{ #category : #meta }
FAMIXAnnotationType class >> requirements [

	<generated>
	^ { FAMIXContainerEntity }
]

{ #category : #'accessing-query' }
FAMIXAnnotationType >> annotatedEntities [
	^ self instances collect: [:each | each annotatedEntity ]
]

{ #category : #'accessing-query' }
FAMIXAnnotationType >> annotatedEntitiesGroup [
	<navigation: 'Annotated entities'>
	^ self annotatedEntities asMooseGroup
]

{ #category : #accessing }
FAMIXAnnotationType >> belongsTo [
	^ self annotationTypesContainer
]

{ #category : #accessing }
FAMIXAnnotationType >> typeContainer [

	^ self annotationTypesContainer
]

{ #category : #accessing }
FAMIXAnnotationType >> typeContainer: anObject [

	^ self annotationTypesContainer: anObject
]
