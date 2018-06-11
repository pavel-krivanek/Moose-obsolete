Extension { #name : #FAMIXSmalltalkSourceLanguage }

{ #category : #'*FmxNGCompatibility-PPExtensions' }
FAMIXSmalltalkSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPSmalltalkGrammar new]
]
