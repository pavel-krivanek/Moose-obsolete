Class {
	#name : #FmxNGAnnotationTypeGenerated,
	#superclass : #FmxNGType,
	#instVars : [
		'#instances => FMMany type: #FmxNGTTypedAnnotationInstance opposite: #annotationType',
		'#annotationTypesContainer => FMOne type: #FmxNGTWithAnnotationTypes opposite: #definedAnnotationTypes'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAnnotationTypeGenerated class >> annotation [

	<MSEClass: #AnnotationTypeGenerated super: #FmxNGType>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAnnotationTypeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAnnotationTypeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAnnotationType}
]

{ #category : #'_fromTrait_FmxNGTAnnotationTypeGenerated' }
FmxNGAnnotationTypeGenerated >> annotationTypesContainer [

	<MSEComment: 'Container in which an AnnotationType may reside'>
	<container>

	^ annotationTypesContainer
]

{ #category : #'_fromTrait_FmxNGTAnnotationTypeGenerated' }
FmxNGAnnotationTypeGenerated >> annotationTypesContainer: anObject [

	annotationTypesContainer := anObject

]

{ #category : #'_fromTrait_FmxNGTAnnotationTypeGenerated' }
FmxNGAnnotationTypeGenerated >> instances [

	<MSEComment: 'Annotations of this type'>
	^ instances
]

{ #category : #'_fromTrait_FmxNGTAnnotationTypeGenerated' }
FmxNGAnnotationTypeGenerated >> instances: anObject [

	instances value: anObject

]
