Trait {
	#name : #FmxNGTWithMethods,
	#instVars : [
		'#methods => FMMany type: #FmxNGTMethod opposite: #parentType'
	],
	#category : #'FmxNG-Traits-Method'
}

{ #category : #meta }
FmxNGTWithMethods classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithMethods super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithMethods classSide >> generatedSlotNames [
	<generated>
	^ #(methods)
]

{ #category : #generator }
FmxNGTWithMethods classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithMethods >> methods [

	<generated>
	<MSEComment: 'Methods declared by this type.'>
	^ methods
]

{ #category : #accessing }
FmxNGTWithMethods >> methods: anObject [

	<generated>
	methods value: anObject

]
