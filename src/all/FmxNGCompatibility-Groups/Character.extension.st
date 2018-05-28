Extension { #name : #Character }

{ #category : #'*FmxNGCompatibility-Groups' }
Character >> isCr [
	^ self asInteger = 13
]

{ #category : #'*FmxNGCompatibility-Groups' }
Character >> isLf [
	^ self asInteger = 10
]
