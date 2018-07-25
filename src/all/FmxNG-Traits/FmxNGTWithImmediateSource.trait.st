Trait {
	#name : #FmxNGTWithImmediateSource,
	#instVars : [
		'source'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithImmediateSource classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithImmediateSource super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithImmediateSource classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithImmediateSource class>>#generatedSlotNames'.
	^ #(source)
]

{ #category : #generator }
FmxNGTWithImmediateSource classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithImmediateSource >> source [

	<MSEProperty: #source type: #String>
	<generated>
	<MSEComment: 'Actual source code of the source entity'>
	^ source
]

{ #category : #accessing }
FmxNGTWithImmediateSource >> source: anObject [

	<generated>
	source := anObject

]
