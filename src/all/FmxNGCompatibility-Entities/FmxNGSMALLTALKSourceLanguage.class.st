Class {
	#name : #FmxNGSMALLTALKSourceLanguage,
	#superclass : #FmxNGSourceLanguage,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGSMALLTALKSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #SMALLTALKSourceLanguage super: #FmxNGSourceLanguage>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGSMALLTALKSourceLanguage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGSMALLTALKSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGSMALLTALKSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGSMALLTALKSourceLanguage >> isSmalltalk [
	^ true
]

{ #category : #'Moose-Finder' }
FmxNGSMALLTALKSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPSmalltalkGrammar new]
]
