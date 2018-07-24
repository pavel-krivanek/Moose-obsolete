Class {
	#name : #FmxNGJavaUnknownSourceLanguage,
	#superclass : #FmxNGJavaEntity,
	#traits : 'FmxNGTSourceLanguage',
	#classTraits : 'FmxNGTSourceLanguage classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaUnknownSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #UnknownSourceLanguage super: #FmxNGJavaEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaUnknownSourceLanguage class >> generatedSlotNames [
	<generated>
	'FmxNGJavaUnknownSourceLanguage class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaUnknownSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceLanguage)
]

{ #category : #meta }
FmxNGJavaUnknownSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownSourceLanguage >> isUnknown [ 
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaUnknownSourceLanguage >> name [
	
	<MSEProperty: #name type: #String> 
	<derived>
	<MSEComment: 'The name of the language'>
	
	^ 'Unknown'
]
