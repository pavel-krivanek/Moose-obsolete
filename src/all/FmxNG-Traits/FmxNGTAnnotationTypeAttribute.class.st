Class {
	#name : #FmxNGTAnnotationTypeAttribute,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationAttributeInstances => FMMany type: #FmxNGTTypedAnnotationInstanceAttribute opposite: #annotationTypeAttribute'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAnnotationTypeAttribute class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationTypeAttribute super: #FmxNGTAnnotationTypeAttributeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
