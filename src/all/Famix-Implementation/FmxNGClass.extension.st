Extension { #name : #FmxNGClass }

{ #category : #'*Famix-Implementation' }
FmxNGClass >> isClass [
	^ true
]

{ #category : #'*Famix-Implementation' }
FmxNGClass >> smalltalkClass [ 
	"Returns the associated smalltalk class if it exist in the system."
	
	^ FAMIXNameResolver smalltalkClassFromFamixClassName: 
			self name  ifAbsent: [nil] 
]
