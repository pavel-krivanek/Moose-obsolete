Class {
	#name : #FmxNGContainerEntityGenerated,
	#superclass : #FmxNGNamedEntity,
	#instVars : [
		'#types => FMMany type: #FmxNGTType opposite: #typeContainer',
		'#definedAnnotationTypes => FMMany type: #FmxNGTAnnotationType opposite: #annotationTypesContainer',
		'#functions => FMMany type: #FmxNGTFunction opposite: #functionOwner'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGContainerEntityGenerated class >> annotation [

	<MSEClass: #ContainerEntityGenerated super: #FmxNGNamedEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGContainerEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGContainerEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTWithAnnotationTypes. FmxNGTWithFunctions. FmxNGTWithTypes}
]

{ #category : #'_fromTrait_FmxNGTWithAnnotationTypesGenerated' }
FmxNGContainerEntityGenerated >> definedAnnotationTypes [

	^ definedAnnotationTypes
]

{ #category : #'_fromTrait_FmxNGTWithAnnotationTypesGenerated' }
FmxNGContainerEntityGenerated >> definedAnnotationTypes: anObject [

	definedAnnotationTypes value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithFunctionsGenerated' }
FmxNGContainerEntityGenerated >> functions [

	^ functions
]

{ #category : #'_fromTrait_FmxNGTWithFunctionsGenerated' }
FmxNGContainerEntityGenerated >> functions: anObject [

	functions value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithTypesGenerated' }
FmxNGContainerEntityGenerated >> types [

	^ types
]

{ #category : #'_fromTrait_FmxNGTWithTypesGenerated' }
FmxNGContainerEntityGenerated >> types: anObject [

	types value: anObject

]
