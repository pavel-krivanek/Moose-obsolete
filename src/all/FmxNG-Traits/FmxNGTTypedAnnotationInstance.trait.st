Trait {
	#name : #FmxNGTTypedAnnotationInstance,
	#instVars : [
		'#annotationType => FMOne type: #FmxNGTAnnotationType opposite: #instances'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTTypedAnnotationInstance classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstance super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTypedAnnotationInstance classSide >> generatedSlotNames [
	<generated>
	^ #(annotationType)
]

{ #category : #generator }
FmxNGTTypedAnnotationInstance classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstance >> annotationType [

	<generated>
	<MSEComment: 'Refers to the type of an annotation. (In some languages, Java and C#, an annotation as an explicit type). '>
	<container>

	^ annotationType
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstance >> annotationType: anObject [

	<generated>
	annotationType := anObject

]
