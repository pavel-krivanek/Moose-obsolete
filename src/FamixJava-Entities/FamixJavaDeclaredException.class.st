Class {
	#name : #FamixJavaDeclaredException,
	#superclass : #FamixJavaException,
	#traits : 'FamixTDeclaredException',
	#classTraits : 'FamixTDeclaredException classTrait',
	#category : #'FamixJava-Entities-Entities'
}

{ #category : #meta }
FamixJavaDeclaredException class >> annotation [

	<MSEClass: #DeclaredException super: #FamixJavaException>
	<package: #'FamixJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixJavaDeclaredException class >> generatedSlotNames [
	<generated>
	'FamixJavaDeclaredException class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixJavaDeclaredException class >> generatedTraitNames [
	<generated>
	^ #(FamixTDeclaredException)
]

{ #category : #meta }
FamixJavaDeclaredException class >> requirements [

	<generated>
	^ {  }
]
