Class {
	#name : #FmxNGAnnotationType,
	#superclass : #FmxNGType,
	#traits : 'FmxNGTAnnotationType',
	#classTraits : 'FmxNGTAnnotationType classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAnnotationType class >> annotation [

	<generated>
	<MSEClass: #AnnotationType super: #FmxNGType>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAnnotationType class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAnnotationType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationType)
]

{ #category : #meta }
FmxNGAnnotationType class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'accessing-query' }
FmxNGAnnotationType >> annotatedEntities [
	^ self instances collect: [:each | each annotatedEntity ]
]

{ #category : #'accessing-query' }
FmxNGAnnotationType >> annotatedEntitiesGroup [
	<navigation: 'Annotated entities'>
	^ self annotatedEntities asMooseGroup
]

{ #category : #accessing }
FmxNGAnnotationType >> belongsTo [
	^ self annotationTypesContainer
]

{ #category : #accessing }
FmxNGAnnotationType >> container [

	^ self annotationTypesContainer
]

{ #category : #accessing }
FmxNGAnnotationType >> container: anObject [

	^ self annotationTypesContainer: anObject
]

{ #category : #'accessing-query' }
FmxNGAnnotationType >> mooseIcon [ 
	^ MooseIcons famixAnnotationType
]
