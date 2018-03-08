Class {
	#name : #FmxNGAnnotationType,
	#superclass : #FmxNGAnnotationTypeGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAnnotationType class >> annotation [

	<MSEClass: #AnnotationType super: #FmxNGAnnotationTypeGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
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
	^ self typeContainer
]

{ #category : #'Moose-Finder' }
FmxNGAnnotationType >> mooseIcon [ 
	^ MooseIcons famixAnnotationType
]
