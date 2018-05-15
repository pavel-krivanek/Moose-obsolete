Trait {
	#name : #FmxNGTWithAnnotationInstances,
	#instVars : [
		'#annotationInstances => FMMany type: #FmxNGTAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'FmxNG-Traits-AnnotationInstance'
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
FmxNGTWithAnnotationInstances >> annotationInstanceNamed: anAnnotationName [
	^ self 
		annotationInstanceNamed: anAnnotationName 
		ifAbsent: [ ]
]

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> annotationInstanceNamed: anAnnotationName ifAbsent: aBlock [
	^ self annotationInstances 
		detect: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
		ifNone: aBlock
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

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> annotationTypes [
	^ self annotationInstances collectAsSet: [:each | each annotationType ]

]

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> isAnnotated [
	^ self annotationInstances notEmpty
]

{ #category : #accessing }
FmxNGTWithAnnotationInstances >> isAnnotatedWith: anAnnotationName [
	^ self annotationInstances contains: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
]
