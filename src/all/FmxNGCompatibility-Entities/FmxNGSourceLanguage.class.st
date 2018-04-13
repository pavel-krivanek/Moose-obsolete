Class {
	#name : #FmxNGSourceLanguage,
	#superclass : #FmxNGSourceLanguageGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #adding }
FmxNGSourceLanguage >> addSourcedEntity: aSourcedEntity [
	^ sourcedEntities add: aSourcedEntity
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

{ #category : #accessing }
FmxNGSourceLanguage >> name [
	"The name of the language that is not modeled explicitly"
	
	<MSEProperty: #name type: #String> <derived>
	<MSEComment: 'The name of the language that is not modeled explicitly.'>
	
	^ (self class name removePrefix: 'FmxNG') removeSuffix: 'SourceLanguage'
]
