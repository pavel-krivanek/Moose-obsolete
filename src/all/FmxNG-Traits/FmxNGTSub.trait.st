Trait {
	#name : #FmxNGTSub,
	#instVars : [
		'#supers => FMOne type: #FmxNGTSuper opposite: #subs'
	],
	#category : #'FmxNG-Traits-Inheritance-Simple'
}

{ #category : #meta }
FmxNGTSub classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TSub super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTSub classSide >> generatedSlotNames [
	<generated>
	^ #(supers)
]

{ #category : #generator }
FmxNGTSub classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTSub >> supers [

	<generated>
	^ supers
]

{ #category : #accessing }
FmxNGTSub >> supers: anObject [

	<generated>
	supers := anObject

]
