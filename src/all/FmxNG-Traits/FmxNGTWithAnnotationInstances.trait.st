Trait {
	#name : #FmxNGTWithAnnotationInstances,
	#instVars : [
		'#annotationInstances => FMMany type: #FmxNGTAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'FmxNG-Traits-AnnotationInstance'
}

{ #category : #meta }
FmxNGTWithAnnotationInstances classSide >> annotation [

	<MSEClass: #TWithAnnotationInstances super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithAnnotationInstances classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithAnnotationInstances class>>#generatedSlotNames'.
	^ #(annotationInstances)
]

{ #category : #generator }
FmxNGTWithAnnotationInstances classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'Famix-Java' }
FmxNGTWithAnnotationInstances >> allAnnotationInstances [
	| result |
	result := OrderedCollection new.
	result addAll: self annotationInstances.
	result addAll: (self methods flatCollect: [ :each | each annotationInstances ]).
	^ result 
]

{ #category : #'Famix-Java' }
FmxNGTWithAnnotationInstances >> annotationInstanceNamed: anAnnotationName [
	^ self 
		annotationInstanceNamed: anAnnotationName 
		ifAbsent: [ ]
]

{ #category : #'Famix-Java' }
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

{ #category : #'Famix-Java' }
FmxNGTWithAnnotationInstances >> isAnnotated [
	^ self annotationInstances notEmpty
]

{ #category : #'Famix-Java' }
FmxNGTWithAnnotationInstances >> isAnnotatedWith: anAnnotationName [
	^ self annotationInstances contains: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
]
