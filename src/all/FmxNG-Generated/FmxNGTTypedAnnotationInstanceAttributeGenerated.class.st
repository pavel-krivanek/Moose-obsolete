Class {
	#name : #FmxNGTTypedAnnotationInstanceAttributeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationTypeAttribute => FMOne type: #FmxNGTAnnotationTypeAttribute opposite: #annotationAttributeInstances'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTypedAnnotationInstanceAttributeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstanceAttribute super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceAttributeGenerated >> annotationTypeAttribute [

	<MSEComment: 'This corresponds to the type of the attribute in an AnnotationInstance'>
	^ annotationTypeAttribute
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceAttributeGenerated >> annotationTypeAttribute: anObject [

	annotationTypeAttribute := anObject

]
