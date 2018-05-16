Class {
	#name : #FmxNGCSourceLanguage,
	#superclass : #FmxNGSourceLanguage,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGCSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #CSourceLanguage super: #FmxNGSourceLanguage>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGCSourceLanguage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGCSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGCSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGCSourceLanguage >> isC [
	^ true
]
