Trait {
	#name : #FmxNGTWithThrownExceptions,
	#instVars : [
		'#thrownExceptions => FMMany type: #FmxNGTThrownException opposite: #definingEntity'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithThrownExceptions classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithThrownExceptions super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithThrownExceptions classSide >> generatedSlotNames [
	<generated>
	^ #(thrownExceptions)
]

{ #category : #generator }
FmxNGTWithThrownExceptions classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithThrownExceptions >> thrownExceptions [

	<generated>
	^ thrownExceptions
]

{ #category : #accessing }
FmxNGTWithThrownExceptions >> thrownExceptions: anObject [

	<generated>
	thrownExceptions value: anObject

]
