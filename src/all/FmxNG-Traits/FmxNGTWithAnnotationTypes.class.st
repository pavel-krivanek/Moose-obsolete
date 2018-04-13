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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationTypes super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithAnnotationTypes >> definedAnnotationTypes [

	<generated>
	^ definedAnnotationTypes
]

{ #category : #accessing }
FmxNGTWithAnnotationTypes >> definedAnnotationTypes: anObject [

	<generated>
	definedAnnotationTypes value: anObject

]
