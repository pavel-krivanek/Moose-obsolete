Class {
	#name : #FmxNGJavaSourceLanguage,
	#superclass : #FmxNGJavaEntity,
	#traits : 'FmxNGTSourceLanguage',
	#classTraits : 'FmxNGTSourceLanguage classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #SourceLanguage super: #FmxNGJavaEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaSourceLanguage class >> generatedSlotNames [
	<generated>
	'FmxNGJavaSourceLanguage class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceLanguage)
]

{ #category : #meta }
FmxNGJavaSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGJavaSourceLanguage >> isAttached [
	"Returns whether the receiver (a language) has some entities associated with it. By default, if there are no entities attached, it means that all of them are of this language."

	^ self sourcedEntities notEmpty  
]
