Class {
	#name : #FmxNGAnnotationType,
	#superclass : #FmxNGAnnotationTypeGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

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

{ #category : #'Moose-Finder' }
FmxNGAnnotationType >> mooseIcon [ 
	^ MooseIcons famixAnnotationType
]
