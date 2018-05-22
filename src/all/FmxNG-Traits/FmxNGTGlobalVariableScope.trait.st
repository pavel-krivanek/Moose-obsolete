Trait {
	#name : #FmxNGTGlobalVariableScope,
	#instVars : [
		'#globalVariables => FMMany type: #FmxNGTGlobalVariable opposite: #parentScope'
	],
	#category : #'FmxNG-Traits-GlobalVariable'
}

{ #category : #meta }
FmxNGTGlobalVariableScope classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariableScope super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTGlobalVariableScope classSide >> generatedSlotNames [
	<generated>
	^ #(globalVariables)
]

{ #category : #generator }
FmxNGTGlobalVariableScope classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTGlobalVariableScope >> addGlobalVariable: aGlobalVariable [ 
	globalVariables add: aGlobalVariable
]

{ #category : #accessing }
FmxNGTGlobalVariableScope >> globalVariables [

	<generated>
	<MSEComment: 'Global variables defined in the scope, if any.'>
	^ globalVariables
]

{ #category : #accessing }
FmxNGTGlobalVariableScope >> globalVariables: anObject [

	<generated>
	globalVariables value: anObject

]
