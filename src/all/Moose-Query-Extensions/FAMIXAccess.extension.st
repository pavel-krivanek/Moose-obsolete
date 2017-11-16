Extension { #name : #FAMIXAccess }

{ #category : #'*Moose-Query-Extensions' }
FAMIXAccess class >> fromMethod [
	^ self lookupSelector: #accessor
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAccess class >> toMethod [
	^ self lookupSelector: #variable
]
