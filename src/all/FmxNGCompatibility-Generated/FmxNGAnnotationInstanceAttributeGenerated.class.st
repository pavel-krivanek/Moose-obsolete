Class {
	#name : #FmxNGAnnotationInstanceAttributeGenerated,
	#superclass : #FmxNGSourcedEntity,
	#instVars : [
		'#annotationTypeAttribute => FMOne type: #FmxNGTAnnotationTypeAttribute opposite: #annotationAttributeInstances',
		'#value',
		'#parentAnnotationInstance => FMOne type: #FmxNGTWithAnnotationInstanceAttributes opposite: #attributes'
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
