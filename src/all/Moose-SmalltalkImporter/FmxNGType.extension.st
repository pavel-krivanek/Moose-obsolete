Extension { #name : #FmxNGType }

{ #category : #'*Moose-SmalltalkImporter' }
FmxNGType >> createReferenceFrom: aBehaviouralEntity [
	^ FmxNGReference source: aBehaviouralEntity target: self
]
