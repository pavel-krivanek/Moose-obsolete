Trait {
	#name : #FmxNGTWithModule,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithModule classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithModule super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithModule classSide >> generatedSlotNames [
	<generated>
	^ #(module)
]

{ #category : #generator }
FmxNGTWithModule classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithModule >> module [

	<generated>
	^ module
]

{ #category : #accessing }
FmxNGTWithModule >> module: anObject [

	<generated>
	module := anObject

]
