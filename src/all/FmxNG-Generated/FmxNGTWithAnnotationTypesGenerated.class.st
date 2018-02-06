Class {
	#name : #FmxNGTWithAnnotationTypesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definedAnnotationTypes => FMMany type: #FmxNGTAnnotationType opposite: #annotationTypesContainer'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationTypesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationTypes super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithAnnotationTypesGenerated >> definedAnnotationTypes [

	^ definedAnnotationTypes
]

{ #category : #accessing }
FmxNGTWithAnnotationTypesGenerated >> definedAnnotationTypes: anObject [

	definedAnnotationTypes value: anObject

]
