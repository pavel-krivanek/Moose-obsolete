Class {
	#name : #FmxNGTTypedAnnotationInstance,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationType => FMOne type: #FmxNGTAnnotationType opposite: #instances'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTypedAnnotationInstance class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstance super: #FmxNGTTypedAnnotationInstanceGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
