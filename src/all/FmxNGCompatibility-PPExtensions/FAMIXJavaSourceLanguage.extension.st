Extension { #name : #FAMIXJavaSourceLanguage }

{ #category : #'*FmxNGCompatibility-PPExtensions' }
FAMIXJavaSourceLanguage >> format: aSourceString from: anEntity [
	^ PP2TextHighlighter new
		parser: self parser;
		color: 'keyword' with: Color red muchDarker;
		color: 'comment' with: Color gray;
"		bold: 'keyword';"
		highlight: aSourceString asText
]

{ #category : #'*FmxNGCompatibility-PPExtensions' }
FAMIXJavaSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPJavaLexicon new]
]
