Trait {
	#name : #FmxNGTWithAccesses,
	#instVars : [
		'#accesses => FMMany type: #FmxNGTAccess opposite: #accessor'
	],
	#category : #'FmxNG-Traits-Access'
}

{ #category : #meta }
FmxNGTWithAccesses classSide >> annotation [

	<MSEClass: #TWithAccesses super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithAccesses classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithAccesses class>>#generatedSlotNames'.
	^ #(accesses)
]

{ #category : #generator }
FmxNGTWithAccesses classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithAccesses >> accesses [

	<generated>
	<MSEComment: 'Accesses to variables made by this behaviour.'>
	^ accesses
]

{ #category : #accessing }
FmxNGTWithAccesses >> accesses: anObject [

	<generated>
	accesses value: anObject

]

{ #category : #adding }
FmxNGTWithAccesses >> addAccess: anAccess [ 
	accesses add: anAccess
]
