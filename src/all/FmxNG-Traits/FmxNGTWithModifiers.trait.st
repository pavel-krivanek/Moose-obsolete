Trait {
	#name : #FmxNGTWithModifiers,
	#instVars : [
		'modifiers'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithModifiers classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithModifiers super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithModifiers classSide >> generatedSlotNames [
	<generated>
	^ #(modifiers)
]

{ #category : #generator }
FmxNGTWithModifiers classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithModifiers >> modifiers [

	<MSEProperty: #modifiers type: #String>
	<generated>
	<MSEComment: 'Generic container for language dependent modifiers.'>
	^ modifiers
]

{ #category : #accessing }
FmxNGTWithModifiers >> modifiers: anObject [

	<generated>
	modifiers := anObject

]
