"
FAMIXGlobalVariable represents a global variable in the source code.

"
Trait {
	#name : #FmxNGTGlobalVariable,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTGlobalVariable classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTGlobalVariable classSide >> generatedSlotNames [
	<generated>
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
