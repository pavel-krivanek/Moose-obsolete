"
I represent a header file. Typically a .h or .hpp
"
Trait {
	#name : #FmxNGTHeader,
	#instVars : [
		'#headerOwner => FMOne type: #FmxNGTWithHeader opposite: #header'
	],
	#category : #'FmxNG-Traits-Header'
}

{ #category : #meta }
FmxNGTHeader classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #THeader super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTHeader classSide >> generatedSlotNames [
	<generated>
	'FmxNGTHeader class>>#generatedSlotNames'.
	^ #(headerOwner)
]

{ #category : #generator }
FmxNGTHeader classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTHeader >> headerOwner [

	<generated>
	^ headerOwner
]

{ #category : #accessing }
FmxNGTHeader >> headerOwner: anObject [

	<generated>
	headerOwner := anObject

]
