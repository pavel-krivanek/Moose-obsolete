Class {
	#name : #FmxNGTWithAnnotationInstanceAttributes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAnnotationInstanceAttribute opposite: #parentAnnotationInstance'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationInstanceAttributes class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstanceAttributes super: #FmxNGTWithAnnotationInstanceAttributesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
