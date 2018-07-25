Class {
	#name : #FAMIXThrownException,
	#superclass : #FAMIXException,
	#traits : 'FmxNGTThrownException',
	#classTraits : 'FmxNGTThrownException classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXThrownException class >> annotation [

	<MSEClass: #ThrownException super: #FAMIXException>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXThrownException class >> generatedSlotNames [
	<generated>
	'FAMIXThrownException class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXThrownException class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTThrownException)
]

{ #category : #meta }
FAMIXThrownException class >> requirements [

	<generated>
	^ {  }
]
