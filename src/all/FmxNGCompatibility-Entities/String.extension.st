Extension { #name : #String }

{ #category : #'*FmxNGCompatibility-Entities-Entities' }
String >> asFAMIXComment [
	^ FmxNGComment content: self
]
