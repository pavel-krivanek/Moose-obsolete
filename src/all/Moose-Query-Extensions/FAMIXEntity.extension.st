Extension { #name : #FAMIXEntity }

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetMooseQueryCaches.]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> resetMooseQueryCaches [
	"Here do nothing. Customize in subclasses."
]
