Class {
	#name : #FmxNGSourceLanguage,
	#superclass : #FmxNGEntity,
	#traits : 'FmxNGTSourceLanguage',
	#classTraits : 'FmxNGTSourceLanguage classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #SourceLanguage super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGSourceLanguage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceLanguage)
]

{ #category : #meta }
FmxNGSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #adding }
FmxNGSourceLanguage >> addSourcedEntity: aSourcedEntity [
	^ self sourcedEntities add: aSourcedEntity
]

{ #category : #formatting }
FmxNGSourceLanguage >> format: aSourceString from: anEntity [
	^ aSourceString
	
	
]

{ #category : #testing }
FmxNGSourceLanguage >> isAttached [
	"Returns whether the receiver (a language) has some entities associated with it. By default, if there are no entities attached, it means that all of them are of this language."

	^ self sourcedEntities notEmpty  
]

{ #category : #'Famix-C' }
FmxNGSourceLanguage >> isC [ 
	^ false
]

{ #category : #'Famix-Java' }
FmxNGSourceLanguage >> isJava [
	^ false
]

{ #category : #'Famix-Smalltalk' }
FmxNGSourceLanguage >> isSmalltalk [
	 ^ false
]

{ #category : #testing }
FmxNGSourceLanguage >> isUnknown [ 
	^ false
]
