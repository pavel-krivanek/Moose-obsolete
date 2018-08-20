Class {
	#name : #FmxNGTest1SourceLanguage,
	#superclass : #FmxNGTest1Entity,
	#traits : 'FmxNGTSourceLanguage',
	#classTraits : 'FmxNGTSourceLanguage classTrait',
	#category : #'FmxNGTest1-Entities-Entities'
}

{ #category : #meta }
FmxNGTest1SourceLanguage class >> annotation [

	<MSEClass: #SourceLanguage super: #FmxNGTest1Entity>
	<package: #'FmxNGTest1-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest1SourceLanguage class >> generatedSlotNames [
	<generated>
	'FmxNGTest1SourceLanguage class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest1SourceLanguage class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceLanguage)
]

{ #category : #meta }
FmxNGTest1SourceLanguage class >> requirements [

	<generated>
	^ {  }
]
