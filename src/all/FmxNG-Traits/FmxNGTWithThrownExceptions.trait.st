Trait {
	#name : #FmxNGTWithThrownExceptions,
	#instVars : [
		'#thrownExceptions => FMMany type: #FmxNGTThrownException opposite: #definingEntity'
	],
	#category : #'FmxNG-Traits-ThrownException'
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
	'FmxNGTWithThrownExceptions class>>#generatedSlotNames'.
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
	<MSEComment: 'The exceptions thrown by the method'>
	^ thrownExceptions
]

{ #category : #accessing }
FmxNGTWithThrownExceptions >> thrownExceptions: anObject [

	<generated>
	thrownExceptions value: anObject

]
