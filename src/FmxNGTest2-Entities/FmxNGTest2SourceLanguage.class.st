Class {
	#name : #FmxNGTest2SourceLanguage,
	#superclass : #FmxNGTest2Entity,
	#traits : 'FmxNGTSourceLanguage',
	#classTraits : 'FmxNGTSourceLanguage classTrait',
	#category : #'FmxNGTest2-Entities-Entities'
}

{ #category : #meta }
FmxNGTest2SourceLanguage class >> annotation [

	<MSEClass: #SourceLanguage super: #FmxNGTest2Entity>
	<package: #'FmxNGTest2-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGTest2SourceLanguage class >> generatedSlotNames [
	<generated>
	'FmxNGTest2SourceLanguage class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTest2SourceLanguage class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceLanguage)
]

{ #category : #meta }
FmxNGTest2SourceLanguage class >> requirements [

	<generated>
	^ {  }
]
