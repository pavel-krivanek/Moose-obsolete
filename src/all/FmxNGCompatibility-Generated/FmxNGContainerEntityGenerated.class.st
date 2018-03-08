Class {
	#name : #FmxNGContainerEntityGenerated,
	#superclass : #FmxNGNamedEntity,
	#instVars : [
		'#definedAnnotationTypes => FMMany type: #FmxNGTAnnotationType opposite: #annotationTypesContainer',
		'#types => FMMany type: #FmxNGTType opposite: #typeContainer',
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
