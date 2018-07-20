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

{ #category : #'as yet unclassified' }
FmxNGJavaSourceLanguage >> addSourcedEntity: aSourcedEntity [
	^ self sourcedEntities add: aSourcedEntity
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceLanguage >> format: aSourceString from: anEntity [
	^ aSourceString
	
	
]

{ #category : #testing }
FmxNGJavaSourceLanguage >> isAttached [
	"Returns whether the receiver (a language) has some entities associated with it. By default, if there are no entities attached, it means that all of them are of this language."

	^ self sourcedEntities notEmpty  
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceLanguage >> isC [ 
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceLanguage >> isJava [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceLanguage >> isSmalltalk [
	 ^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceLanguage >> isUnknown [ 
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceLanguage >> name [
	"The name of the language that is not modeled explicitly"
	
	<MSEProperty: #name type: #String> <derived>
	<MSEComment: 'The name of the language that is not modeled explicitly.'>
	
	^ (self class name removePrefix: 'FmxNGJava') removeSuffix: 'SourceLanguage'
]
