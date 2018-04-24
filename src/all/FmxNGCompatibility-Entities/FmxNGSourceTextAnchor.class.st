Class {
	#name : #FmxNGSourceTextAnchor,
	#superclass : #FmxNGSourceAnchor,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGSourceTextAnchor class >> annotation [

	<generated>
	<MSEClass: #SourceTextAnchor super: #FmxNGSourceAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGSourceTextAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGSourceTextAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGSourceTextAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #adding }
FmxNGSourceTextAnchor >> addSourcedEntity: aSourcedEntity [
	^ self sourcedEntities add: aSourcedEntity
]

{ #category : #formatting }
FmxNGSourceTextAnchor >> format: aSourceString from: anEntity [
	^ aSourceString
	
	
]

{ #category : #testing }
FmxNGSourceTextAnchor >> isAttached [
	"Returns whether the receiver (a language) has some entities associated with it. By default, if there are no entities attached, it means that all of them are of this language."

	^ self sourcedEntities notEmpty  
]

{ #category : #'Famix-C' }
FmxNGSourceTextAnchor >> isC [ 
	^ false
]

{ #category : #'Famix-Java' }
FmxNGSourceTextAnchor >> isJava [
	^ false
]

{ #category : #'Famix-Smalltalk' }
FmxNGSourceTextAnchor >> isSmalltalk [
	 ^ false
]

{ #category : #testing }
FmxNGSourceTextAnchor >> isUnknown [ 
	^ false
]

{ #category : #accessing }
FmxNGSourceTextAnchor >> name [
	"The name of the language that is not modeled explicitly"
	
	<MSEProperty: #name type: #String> <derived>
	<MSEComment: 'The name of the language that is not modeled explicitly.'>
	
	^ (self class name removePrefix: 'FmxNG') removeSuffix: 'SourceLanguage'
]
