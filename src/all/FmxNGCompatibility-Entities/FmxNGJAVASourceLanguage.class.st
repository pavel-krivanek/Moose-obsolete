Class {
	#name : #FmxNGJAVASourceLanguage,
	#superclass : #FmxNGSourceLanguage,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGJAVASourceLanguage class >> annotation [

	<generated>
	<MSEClass: #JAVASourceLanguage super: #FmxNGSourceLanguage>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJAVASourceLanguage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGJAVASourceLanguage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGJAVASourceLanguage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Finder' }
FmxNGJAVASourceLanguage >> format: aSourceString from: anEntity [
	^ PP2TextHighlighter new
		parser: self parser;
		color: 'keyword' with: Color red muchDarker;
		color: 'comment' with: Color gray;
"		bold: 'keyword';"
		highlight: aSourceString asText
]

{ #category : #testing }
FmxNGJAVASourceLanguage >> isJava [
	^ true
]

{ #category : #'Moose-Finder' }
FmxNGJAVASourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPJavaLexicon new]
]
