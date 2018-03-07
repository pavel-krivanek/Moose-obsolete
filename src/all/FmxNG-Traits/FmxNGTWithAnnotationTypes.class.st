Class {
	#name : #FmxNGTWithAnnotationTypes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definedAnnotationTypes => FMMany type: #FmxNGTAnnotationType opposite: #annotationTypesContainer'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationTypes class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationTypes super: #FmxNGTWithAnnotationTypesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
