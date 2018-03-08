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
