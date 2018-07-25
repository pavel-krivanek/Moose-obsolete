Trait {
	#name : #FmxNGTWithCaughtExceptions,
	#instVars : [
		'#caughtExceptions => FMMany type: #FmxNGTCaughtException opposite: #definingEntity'
	],
	#category : #'FmxNG-Traits-CaughtException'
}

{ #category : #meta }
FmxNGTWithCaughtExceptions classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithCaughtExceptions super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithCaughtExceptions classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithCaughtExceptions class>>#generatedSlotNames'.
	^ #(caughtExceptions)
]

{ #category : #generator }
FmxNGTWithCaughtExceptions classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithCaughtExceptions >> caughtExceptions [

	<generated>
	<MSEComment: 'The exceptions caught by the method'>
	^ caughtExceptions
]

{ #category : #accessing }
FmxNGTWithCaughtExceptions >> caughtExceptions: anObject [

	<generated>
	caughtExceptions value: anObject

]
