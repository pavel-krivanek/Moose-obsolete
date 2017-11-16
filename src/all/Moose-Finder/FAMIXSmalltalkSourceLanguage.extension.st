Extension { #name : #FAMIXSmalltalkSourceLanguage }

{ #category : #'*moose-finder' }
FAMIXSmalltalkSourceLanguage >> parser [
	^ self privateState attributeAt: #parser ifAbsentPut: [PPSmalltalkGrammar new]
]
