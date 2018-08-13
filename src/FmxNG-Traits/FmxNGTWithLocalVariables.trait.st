Trait {
	#name : #FmxNGTWithLocalVariables,
	#instVars : [
		'#localVariables => FMMany type: #FmxNGTLocalVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits-LocalVariable'
}

{ #category : #meta }
FmxNGTWithLocalVariables classSide >> annotation [

	<MSEClass: #TWithLocalVariables super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithLocalVariables classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithLocalVariables class>>#generatedSlotNames'.
	^ #(localVariables)
]

{ #category : #generator }
FmxNGTWithLocalVariables classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithLocalVariables >> addLocalVariable: aLocalVariable [
	localVariables add: aLocalVariable
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
