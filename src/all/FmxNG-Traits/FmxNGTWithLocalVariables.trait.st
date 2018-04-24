Trait {
	#name : #FmxNGTWithLocalVariables,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithLocalVariables classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithLocalVariables super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithLocalVariables classSide >> generatedSlotNames [
	<generated>
	^ #(localVariables)
]

{ #category : #generator }
FmxNGTWithLocalVariables classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithLocalVariables >> localVariables [

	<generated>
	<MSEComment: 'Variables locally defined by this behaviour.'>
	^ localVariables
]

{ #category : #accessing }
FmxNGTWithLocalVariables >> localVariables: anObject [

	<generated>
	localVariables value: anObject

]
