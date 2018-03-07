Class {
	#name : #FmxNGTWithAnnotationInstances,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#annotationInstances => FMMany type: #FmxNGTAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationInstances class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstances super: #FmxNGTWithAnnotationInstancesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
