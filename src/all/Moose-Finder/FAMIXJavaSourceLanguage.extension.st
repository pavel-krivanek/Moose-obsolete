Extension { #name : #FAMIXJavaSourceLanguage }

{ #category : #'*Moose-Finder' }
FAMIXJavaSourceLanguage >> format: aSourceString from: anEntity [
	^ PP2TextHighlighter new
		parser: self parser;
		color: 'keyword' with: Color red muchDarker;
		color: 'comment' with: Color gray;
"		bold: 'keyword';"
		highlight: aSourceString asText
]

{ #category : #'*Moose-Finder' }
FAMIXJavaSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPJavaLexicon new]
]
