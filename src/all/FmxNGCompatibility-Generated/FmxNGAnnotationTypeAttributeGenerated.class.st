Class {
	#name : #FmxNGAnnotationTypeAttributeGenerated,
	#superclass : #FmxNGAttribute,
	#instVars : [
		'#annotationAttributeInstances => FMMany type: #FmxNGTTypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute',
		'#annotationTypeAttribute => FMOne type: #FmxNGTAnnotationTypeAttribute opposite: #annotationAttributeInstances'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAnnotationTypeAttributeGenerated class >> annotation [

	<MSEClass: #AnnotationTypeAttributeGenerated super: #FmxNGAttribute>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAnnotationTypeAttributeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAnnotationTypeAttributeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTAnnotationTypeAttribute. FmxNGTTypedAnnotationInstanceAttribute}
]

{ #category : #'_fromTrait_FmxNGTAnnotationTypeAttributeGenerated' }
FmxNGAnnotationTypeAttributeGenerated >> annotationAttributeInstances [

	<MSEComment: 'A collection of AnnotationInstanceAttribute which hold the usages of this attribute in actual AnnotationInstances'>
	^ annotationAttributeInstances
]

{ #category : #'_fromTrait_FmxNGTAnnotationTypeAttributeGenerated' }
FmxNGAnnotationTypeAttributeGenerated >> annotationAttributeInstances: anObject [

	annotationAttributeInstances value: anObject

]

{ #category : #'_fromTrait_FmxNGTTypedAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationTypeAttributeGenerated >> annotationTypeAttribute [

	<MSEComment: 'This corresponds to the type of the attribute in an AnnotationInstance'>
	^ annotationTypeAttribute
]

{ #category : #'_fromTrait_FmxNGTTypedAnnotationInstanceAttributeGenerated' }
FmxNGAnnotationTypeAttributeGenerated >> annotationTypeAttribute: anObject [

	annotationTypeAttribute := anObject

]
