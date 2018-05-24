Class {
	#name : #FAMIXJavaSourceLanguage,
	#superclass : #FAMIXSourceLanguage,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXJavaSourceLanguage class >> annotation [

	<generated>
	<MSEClass: #JavaSourceLanguage super: #FAMIXSourceLanguage>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXJavaSourceLanguage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXJavaSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXJavaSourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Finder' }
FAMIXJavaSourceLanguage >> format: aSourceString from: anEntity [
	^ PP2TextHighlighter new
		parser: self parser;
		color: 'keyword' with: Color red muchDarker;
		color: 'comment' with: Color gray;
"		bold: 'keyword';"
		highlight: aSourceString asText
]

{ #category : #testing }
FAMIXJavaSourceLanguage >> isJava [
	^ true
]

{ #category : #'Moose-Finder' }
FAMIXJavaSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPJavaLexicon new]
]
