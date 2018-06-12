Trait {
	#name : #FmxNGTAccessible,
	#instVars : [
		'#incomingAccesses => FMMany type: #FmxNGTAccess opposite: #variable'
	],
	#category : #'FmxNG-Traits-Access'
}

{ #category : #meta }
FmxNGTAccessible classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAccessible super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTAccessible classSide >> generatedSlotNames [
	<generated>
	'FmxNGTAccessible class>>#generatedSlotNames'.
	^ #(incomingAccesses)
]

{ #category : #generator }
FmxNGTAccessible classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTAccessible >> incomingAccesses [

	<generated>
	<MSEComment: 'All Famix accesses pointing to this structural entity'>
	^ incomingAccesses
]

{ #category : #accessing }
FmxNGTAccessible >> incomingAccesses: anObject [

	<generated>
	incomingAccesses value: anObject

]
