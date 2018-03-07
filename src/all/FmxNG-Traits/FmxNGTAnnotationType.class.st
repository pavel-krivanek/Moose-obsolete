Class {
	#name : #FmxNGTAnnotationType,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#instances => FMMany type: #FmxNGTTypedAnnotationInstance opposite: #annotationType',
		'#annotationTypesContainer => FMOne type: #FmxNGTWithAnnotationTypes opposite: #definedAnnotationTypes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAnnotationType class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationType super: #FmxNGTAnnotationTypeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
