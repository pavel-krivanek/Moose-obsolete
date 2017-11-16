Extension { #name : #FAMIXJavaSourceLanguage }

{ #category : #'*moose-finder' }
FAMIXJavaSourceLanguage >> format: aSourceString from: anEntity [
	^ PP2TextHighlighter new
		parser: self parser;
		color: 'keyword' with: Color red muchDarker;
		color: 'comment' with: Color gray;
"		bold: 'keyword';"
		highlight: aSourceString asText
]

{ #category : #'*moose-finder' }
FAMIXJavaSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPJavaLexicon new]
]
