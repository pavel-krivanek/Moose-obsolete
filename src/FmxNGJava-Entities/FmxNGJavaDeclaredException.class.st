Class {
	#name : #FmxNGJavaDeclaredException,
	#superclass : #FmxNGJavaException,
	#traits : 'FmxNGTDeclaredException',
	#classTraits : 'FmxNGTDeclaredException classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaDeclaredException class >> annotation [

	<MSEClass: #DeclaredException super: #FmxNGJavaException>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaDeclaredException class >> generatedSlotNames [
	<generated>
	'FmxNGJavaDeclaredException class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaDeclaredException class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTDeclaredException)
]

{ #category : #meta }
FmxNGJavaDeclaredException class >> requirements [

	<generated>
	^ {  }
]
