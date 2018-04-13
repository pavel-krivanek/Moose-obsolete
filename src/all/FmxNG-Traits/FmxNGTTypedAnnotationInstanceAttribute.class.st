Class {
	#name : #FmxNGTTypedAnnotationInstanceAttribute,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationTypeAttribute => FMOne type: #FmxNGTAnnotationTypeAttribute opposite: #annotationAttributeInstances'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTypedAnnotationInstanceAttribute class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstanceAttribute super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceAttribute >> annotationTypeAttribute [

	<generated>
	<MSEComment: 'This corresponds to the type of the attribute in an AnnotationInstance'>
	^ annotationTypeAttribute
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceAttribute >> annotationTypeAttribute: anObject [

	<generated>
	annotationTypeAttribute := anObject

]
