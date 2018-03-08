Class {
	#name : #FmxNGAnnotationTypeAttributeGenerated,
	#superclass : #FmxNGAttribute,
	#instVars : [
		'#annotationTypeAttribute => FMOne type: #FmxNGTAnnotationTypeAttribute opposite: #annotationAttributeInstances',
		'#annotationAttributeInstances => FMMany type: #FmxNGTTypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute'
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
