Class {
	#name : #FmxNGStSmalltalkSourceLanguage,
	#superclass : #FmxNGStSourceLanguage,
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStSmalltalkSourceLanguage class >> annotation [

	<MSEClass: #SmalltalkSourceLanguage super: #FmxNGStSourceLanguage>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStSmalltalkSourceLanguage class >> generatedSlotNames [
	<generated>
	'FmxNGStSmalltalkSourceLanguage class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStSmalltalkSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGStSmalltalkSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGStSmalltalkSourceLanguage >> isSmalltalk [
	^ true
]
