Class {
	#name : #FmxNGJavaCaughtException,
	#superclass : #FmxNGJavaException,
	#traits : 'FmxNGTCaughtException',
	#classTraits : 'FmxNGTCaughtException classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaCaughtException class >> annotation [

	<MSEClass: #CaughtException super: #FmxNGJavaException>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaCaughtException class >> generatedSlotNames [
	<generated>
	'FmxNGJavaCaughtException class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaCaughtException class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTCaughtException)
]

{ #category : #meta }
FmxNGJavaCaughtException class >> requirements [

	<generated>
	^ {  }
]
