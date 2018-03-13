Class {
	#name : #FmxNGAnnotationInstanceGenerated,
	#superclass : #FmxNGSourcedEntity,
	#instVars : [
		'#annotationType => FMOne type: #FmxNGTAnnotationType opposite: #instances',
		'#annotatedEntity => FMOne type: #FmxNGTWithAnnotationInstances opposite: #annotationInstances',
		'#attributes => FMMany type: #FmxNGTAnnotationInstanceAttribute opposite: #parentAnnotationInstance'
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

{ #category : #'_fromTrait_FmxNGTAnnotationInstanceGenerated' }
FmxNGAnnotationInstanceGenerated >> annotatedEntity [

	<MSEComment: 'The NamedEntity on which the annotation occurs.'>
	<container>

	^ annotatedEntity
]

{ #category : #'_fromTrait_FmxNGTAnnotationInstanceGenerated' }
FmxNGAnnotationInstanceGenerated >> annotatedEntity: anObject [

	annotatedEntity := anObject

]

{ #category : #'_fromTrait_FmxNGTTypedAnnotationInstanceGenerated' }
FmxNGAnnotationInstanceGenerated >> annotationType [

	<MSEComment: 'Refers to the type of an annotation. (In some languages, Java and C#, an annotation as an explicit type). '>
	<container>

	^ annotationType
]

{ #category : #'_fromTrait_FmxNGTTypedAnnotationInstanceGenerated' }
FmxNGAnnotationInstanceGenerated >> annotationType: anObject [

	annotationType := anObject

]

{ #category : #'_fromTrait_FmxNGTWithAnnotationInstanceAttributesGenerated' }
FmxNGAnnotationInstanceGenerated >> attributes [

	<MSEComment: 'This corresponds to the actual values of the attributes in an AnnotationInstance'>
	^ attributes
]

{ #category : #'_fromTrait_FmxNGTWithAnnotationInstanceAttributesGenerated' }
FmxNGAnnotationInstanceGenerated >> attributes: anObject [

	attributes value: anObject

]
