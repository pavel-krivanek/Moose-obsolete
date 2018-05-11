Trait {
	#name : #FmxNGTWithAnnotationInstanceAttributes,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAnnotationInstanceAttribute opposite: #parentAnnotationInstance'
	],
	#category : #'FmxNG-Traits-AnnotationInstanceAttribute'
}

{ #category : #meta }
FmxNGTWithAnnotationInstanceAttributes classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstanceAttributes super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithAnnotationInstanceAttributes classSide >> generatedSlotNames [
	<generated>
	^ #(attributes)
]

{ #category : #generator }
FmxNGTWithAnnotationInstanceAttributes classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithAnnotationInstanceAttributes >> attributes [

	<generated>
	<MSEComment: 'This corresponds to the actual values of the attributes in an AnnotationInstance'>
	^ attributes
]

{ #category : #accessing }
FmxNGTWithAnnotationInstanceAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject

]
