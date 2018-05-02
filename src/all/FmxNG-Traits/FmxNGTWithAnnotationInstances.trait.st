Trait {
	#name : #FmxNGTWithAnnotationInstances,
	#instVars : [
		'#annotationInstances => FMMany type: #FmxNGTAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithAnnotationInstances classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAnnotationInstances super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithAnnotationInstances classSide >> generatedSlotNames [
	<generated>
	^ #(annotationInstances)
]

{ #category : #generator }
FmxNGTWithAnnotationInstances classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> annotationInstances [

	<generated>
	<MSEComment: 'This property corresponds to the set of annotations associated to the entity'>
	^ annotationInstances
]

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> annotationInstances: anObject [

	<generated>
	annotationInstances value: anObject

]
