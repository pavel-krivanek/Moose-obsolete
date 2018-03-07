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

	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstanceAttribute super: #FmxNGTTypedAnnotationInstanceAttributeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
