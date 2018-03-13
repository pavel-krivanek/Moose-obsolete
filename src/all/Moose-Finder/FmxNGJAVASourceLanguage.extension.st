Extension { #name : #FmxNGJAVASourceLanguage }

{ #category : #'*Moose-Finder' }
FmxNGJAVASourceLanguage >> format: aSourceString from: anEntity [
	^ PP2TextHighlighter new
		parser: self parser;
		color: 'keyword' with: Color red muchDarker;
		color: 'comment' with: Color gray;
"		bold: 'keyword';"
		highlight: aSourceString asText
]

{ #category : #'*Moose-Finder' }
FmxNGJAVASourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPJavaLexicon new]
]
