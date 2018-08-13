Trait {
	#name : #FmxNGTSuper,
	#instVars : [
		'#subs => FMMany type: #FmxNGTSub opposite: #supers'
	],
	#category : #'FmxNG-Traits-Inheritance-Simple'
}

{ #category : #meta }
FmxNGTSuper classSide >> annotation [

	<MSEClass: #TSuper super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTSuper classSide >> generatedSlotNames [
	<generated>
	'FmxNGTSuper class>>#generatedSlotNames'.
	^ #(subs)
]

{ #category : #generator }
FmxNGTSuper classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTSuper >> subs [

	<generated>
	^ subs
]

{ #category : #accessing }
FmxNGTSuper >> subs: anObject [

	<generated>
	subs value: anObject

]
