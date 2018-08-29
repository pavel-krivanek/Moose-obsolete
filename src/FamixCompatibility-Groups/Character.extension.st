Extension { #name : #Character }

{ #category : #'*FamixCompatibility-Groups' }
Character >> isCr [
	^ self asInteger = 13
]

{ #category : #'*FamixCompatibility-Groups' }
Character >> isLf [
	^ self asInteger = 10
]
