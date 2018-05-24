Extension { #name : #FAMIXSmalltalkSourceLanguage }

{ #category : #'*Moose-Finder' }
FAMIXSmalltalkSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPSmalltalkGrammar new]
]
