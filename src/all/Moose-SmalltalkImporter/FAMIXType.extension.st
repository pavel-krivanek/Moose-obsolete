Extension { #name : #FAMIXType }

{ #category : #'*Moose-SmalltalkImporter' }
FAMIXType >> createReferenceFrom: aBehaviouralEntity [
	^ FAMIXReference source: aBehaviouralEntity target: self
]
