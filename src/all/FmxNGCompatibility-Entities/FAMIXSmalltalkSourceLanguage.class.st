Class {
	#name : #FAMIXSmalltalkSourceLanguage,
	#superclass : #FAMIXSourceLanguage,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXSmalltalkSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #SmalltalkSourceLanguage super: #FAMIXSourceLanguage>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXSmalltalkSourceLanguage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXSmalltalkSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXSmalltalkSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FAMIXSmalltalkSourceLanguage >> isSmalltalk [
	^ true
]

{ #category : #'Moose-Finder' }
FAMIXSmalltalkSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPSmalltalkGrammar new]
]
