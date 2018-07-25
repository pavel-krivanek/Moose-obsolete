"
FAMIXGlobalVariable represents a global variable in the source code.

"
Trait {
	#name : #FmxNGTGlobalVariable,
	#instVars : [
		'#parentScope => FMOne type: #FmxNGTGlobalVariableScope opposite: #globalVariables'
	],
	#category : #'FmxNG-Traits-GlobalVariable'
}

{ #category : #meta }
FmxNGTGlobalVariable classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTGlobalVariable classSide >> generatedSlotNames [
	<generated>
	'FmxNGTGlobalVariable class>>#generatedSlotNames'.
	^ #(parentScope)
]

{ #category : #generator }
FmxNGTGlobalVariable classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTGlobalVariable >> parentScope [

	<generated>
	<MSEComment: 'Scope declaring the global variable. belongsTo implementation'>
	<container>

	^ parentScope
]

{ #category : #accessing }
FmxNGTGlobalVariable >> parentScope: anObject [

	<generated>
	parentScope := anObject

]
