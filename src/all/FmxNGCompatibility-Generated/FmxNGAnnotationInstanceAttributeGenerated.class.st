Class {
	#name : #FmxNGAnnotationInstanceAttributeGenerated,
	#superclass : #FmxNGSourcedEntity,
	#instVars : [
		'#value',
		'#parentAnnotationInstance => FMOne type: #FmxNGTWithAnnotationInstanceAttributes opposite: #attributes',
		'#annotationTypeAttribute => FMOne type: #FmxNGTAnnotationTypeAttribute opposite: #annotationAttributeInstances'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAnnotationInstanceAttributeGenerated class >> annotation [

	<MSEClass: #AnnotationInstanceAttributeGenerated super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAnnotationInstanceAttributeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAnnotationInstanceAttributeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAnnotationInstanceAttribute. FmxNGTTypedAnnotationInstanceAttribute}
]

{ #category : #'_fromTrait_FmxNGTTypedAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationInstanceAttributeGenerated >> annotationTypeAttribute [

	<MSEComment: 'This corresponds to the type of the attribute in an AnnotationInstance'>
	^ annotationTypeAttribute
]

{ #category : #'_fromTrait_FmxNGTTypedAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationInstanceAttributeGenerated >> annotationTypeAttribute: anObject [

	annotationTypeAttribute := anObject

]

{ #category : #'_fromTrait_FmxNGTAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationInstanceAttributeGenerated >> parentAnnotationInstance [

	<MSEComment: 'The instance of the annotation in which the attribute is used.'>
	<container>

	^ parentAnnotationInstance
]

{ #category : #'_fromTrait_FmxNGTAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationInstanceAttributeGenerated >> parentAnnotationInstance: anObject [

	parentAnnotationInstance := anObject

]

{ #category : #'_fromTrait_FmxNGTAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationInstanceAttributeGenerated >> value [

	<MSEProperty: #value type: #String>
	<MSEComment: 'Actual value of the attribute used in an annotation'>
	^ value
]

{ #category : #'_fromTrait_FmxNGTAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationInstanceAttributeGenerated >> value: anObject [

	value := anObject

]
