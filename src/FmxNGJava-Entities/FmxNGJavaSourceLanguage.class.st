Class {
	#name : #FmxNGJavaSourceLanguage,
	#superclass : #FmxNGJavaEntity,
	#traits : 'FmxNGTSourceLanguage',
	#classTraits : 'FmxNGTSourceLanguage classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaSourceLanguage class >> annotation [

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
	
	<MSEProperty: #name type: #String> 
	<derived>
	<MSEComment: 'The name of the language'>
	
	^ 'Java'
]
