Trait {
	#name : #FmxNGTWithImmediateSource,
	#instVars : [
		'source'
	],
	#category : #'FmxNG-Traits-SourceAnchor'
}

{ #category : #meta }
FmxNGTWithImmediateSource classSide >> annotation [

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
FmxNGTWithImmediateSource >> isFile [

	^ false
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

{ #category : #accessing }
FmxNGTWithImmediateSource >> sourceText [

	^ self source
]
