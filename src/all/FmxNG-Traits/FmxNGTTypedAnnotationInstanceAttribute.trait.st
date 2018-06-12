Trait {
	#name : #FmxNGTTypedAnnotationInstanceAttribute,
	#instVars : [
		'#annotationTypeAttribute => FMOne type: #FmxNGTAnnotationTypeAttribute opposite: #annotationAttributeInstances'
	],
	#category : #'FmxNG-Traits-AnnotationTypeAttribute'
}

{ #category : #meta }
FmxNGTTypedAnnotationInstanceAttribute classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTypedAnnotationInstanceAttribute super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTypedAnnotationInstanceAttribute classSide >> generatedSlotNames [
	<generated>
	'FmxNGTTypedAnnotationInstanceAttribute class>>#generatedSlotNames'.
	^ #(annotationTypeAttribute)
]

{ #category : #generator }
FmxNGTTypedAnnotationInstanceAttribute classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceAttribute >> annotationTypeAttribute [

	<generated>
	<MSEComment: 'This corresponds to the type of the attribute in an AnnotationInstance'>
	^ annotationTypeAttribute
]

{ #category : #accessing }
FmxNGTTypedAnnotationInstanceAttribute >> annotationTypeAttribute: anObject [

	<generated>
	annotationTypeAttribute := anObject

]
