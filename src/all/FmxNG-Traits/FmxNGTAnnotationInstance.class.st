Class {
	#name : #FmxNGTAnnotationInstance,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotatedEntity => FMOne type: #FmxNGTWithAnnotationInstances opposite: #annotationInstances'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAnnotationInstance class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationInstance super: #FmxNGTAnnotationInstanceGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
