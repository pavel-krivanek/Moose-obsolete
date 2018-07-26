Class {
	#name : #FmxNGStSourcedEntity,
	#superclass : #FmxNGStEntity,
	#traits : 'FmxNGTWithComments + FmxNGTWithSourceAnchor + FmxNGTWithSourceLanguage',
	#classTraits : 'FmxNGTWithComments classTrait + FmxNGTWithSourceAnchor classTrait + FmxNGTWithSourceLanguage classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStSourcedEntity class >> annotation [

	<MSEClass: #SourcedEntity super: #FmxNGStEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStSourcedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGStSourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithComments FmxNGTWithSourceAnchor FmxNGTWithSourceLanguage)
]

{ #category : #meta }
FmxNGStSourcedEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGStSourcedEntity >> isImplicitVariable [
	^false
]

{ #category : #accessing }
FmxNGStSourcedEntity >> sourceLanguage [
	^ self sourceLanguageOr: FmxNGStUnknownSourceLanguage
]
