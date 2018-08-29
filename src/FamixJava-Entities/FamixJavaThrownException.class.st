Class {
	#name : #FamixJavaThrownException,
	#superclass : #FamixJavaException,
	#traits : 'FamixTThrownException',
	#classTraits : 'FamixTThrownException classTrait',
	#category : #'FamixJava-Entities-Entities'
}

{ #category : #meta }
FamixJavaThrownException class >> annotation [

	<MSEClass: #ThrownException super: #FamixJavaException>
	<package: #'FamixJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixJavaThrownException class >> generatedSlotNames [
	<generated>
	'FamixJavaThrownException class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixJavaThrownException class >> generatedTraitNames [
	<generated>
	^ #(FamixTThrownException)
]

{ #category : #meta }
FamixJavaThrownException class >> requirements [

	<generated>
	^ {  }
]
