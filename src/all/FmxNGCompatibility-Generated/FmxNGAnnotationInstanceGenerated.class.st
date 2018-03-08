Class {
	#name : #FmxNGAnnotationInstanceGenerated,
	#superclass : #FmxNGSourcedEntity,
	#instVars : [
		'#annotatedEntity => FMOne type: #FmxNGTWithAnnotationInstances opposite: #annotationInstances',
		'#attributes => FMMany type: #FmxNGTAnnotationInstanceAttribute opposite: #parentAnnotationInstance',
		'#annotationType => FMOne type: #FmxNGTAnnotationType opposite: #instances'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAnnotationInstanceGenerated class >> annotation [

	<MSEClass: #AnnotationInstanceGenerated super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAnnotationInstanceGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAnnotationInstanceGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAnnotationInstance. FmxNGTTypedAnnotationInstance. FmxNGTWithAnnotationInstanceAttributes}
]
