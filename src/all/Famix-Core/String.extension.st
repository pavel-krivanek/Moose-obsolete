Extension { #name : #String }

{ #category : #'*Famix-Core' }
String >> asFAMIXComment [
	^ FAMIXComment content: self
]
