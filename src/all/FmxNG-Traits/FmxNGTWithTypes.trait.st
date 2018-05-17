Trait {
	#name : #FmxNGTWithTypes,
	#instVars : [
		'#types => FMMany type: #FmxNGTType opposite: #typeContainer'
	],
	#category : #'FmxNG-Traits-Type'
}

{ #category : #meta }
FmxNGTWithTypes classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTypes super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithTypes classSide >> generatedSlotNames [
	<generated>
	^ #(types)
]

{ #category : #generator }
FmxNGTWithTypes classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithTypes >> types [

	<generated>
	<MSEComment: 'Types contained (declared) in this entity, if any.
#types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.'>
	^ types
]

{ #category : #accessing }
FmxNGTWithTypes >> types: anObject [

	<generated>
	types value: anObject

]
