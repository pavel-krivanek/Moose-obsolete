Trait {
	#name : #FmxNGTWithAnnotationTypes,
	#instVars : [
		'#definedAnnotationTypes => FMMany type: #FmxNGTAnnotationType opposite: #annotationTypesContainer'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationTypes classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationTypes super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithAnnotationTypes classSide >> generatedSlotNames [
	<generated>
	^ #(definedAnnotationTypes)
]

{ #category : #generator }
FmxNGTWithAnnotationTypes classSide >> generatedTraitNames [
	<generated>
	^ #()
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
