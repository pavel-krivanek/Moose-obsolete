Class {
	#name : #FAMIXUnknownSourceLanguage,
	#superclass : #FAMIXSourceLanguage,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXUnknownSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #UnknownSourceLanguage super: #FAMIXSourceLanguage>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXUnknownSourceLanguage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXUnknownSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXUnknownSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FAMIXUnknownSourceLanguage >> isUnknown [ 
	^ true
]
