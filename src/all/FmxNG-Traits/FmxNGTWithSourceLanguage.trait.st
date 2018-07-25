Trait {
	#name : #FmxNGTWithSourceLanguage,
	#instVars : [
		'#declaredSourceLanguage => FMOne type: #FmxNGTSourceLanguage opposite: #sourcedEntities'
	],
	#category : #'FmxNG-Traits-SourceLanguage'
}

{ #category : #meta }
FmxNGTWithSourceLanguage classSide >> annotation [

	<MSEClass: #TWithSourceLanguage super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithSourceLanguage classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithSourceLanguage class>>#generatedSlotNames'.
	^ #(declaredSourceLanguage)
]

{ #category : #generator }
FmxNGTWithSourceLanguage classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithSourceLanguage >> declaredSourceLanguage [

	<generated>
	<MSEComment: 'The declared SourceLanguage for the source code of this entity'>
	^ declaredSourceLanguage
]

{ #category : #accessing }
FmxNGTWithSourceLanguage >> declaredSourceLanguage: anObject [

	<generated>
	declaredSourceLanguage := anObject

]
