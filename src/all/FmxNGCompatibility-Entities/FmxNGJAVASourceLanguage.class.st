Class {
	#name : #FmxNGJAVASourceLanguage,
	#superclass : #FmxNGJAVASourceLanguageGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGJAVASourceLanguage class >> annotation [

	<MSEClass: #JAVASourceLanguage super: #FmxNGJAVASourceLanguageGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
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
