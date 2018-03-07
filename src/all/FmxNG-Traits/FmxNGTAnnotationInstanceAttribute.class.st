Class {
	#name : #FmxNGTAnnotationInstanceAttribute,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#value',
		'#parentAnnotationInstance => FMOne type: #FmxNGTWithAnnotationInstanceAttributes opposite: #attributes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAnnotationInstanceAttribute class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAnnotationInstanceAttribute super: #FmxNGTAnnotationInstanceAttributeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
