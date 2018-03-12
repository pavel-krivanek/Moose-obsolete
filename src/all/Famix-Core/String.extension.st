Extension { #name : #String }

{ #category : #'*Famix-Core' }
String >> asFAMIXComment [
	^ FmxNGComment content: self
]
