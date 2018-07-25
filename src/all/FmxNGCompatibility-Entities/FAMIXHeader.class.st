Class {
	#name : #FAMIXHeader,
	#superclass : #FAMIXCFile,
	#traits : 'FmxNGTHeader',
	#classTraits : 'FmxNGTHeader classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXHeader class >> annotation [

	<MSEClass: #Header super: #FAMIXCFile>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXHeader class >> generatedSlotNames [
	<generated>
	'FAMIXHeader class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXHeader class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTHeader)
]

{ #category : #meta }
FAMIXHeader class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FAMIXHeader >> isHeader [
	^ true
]
