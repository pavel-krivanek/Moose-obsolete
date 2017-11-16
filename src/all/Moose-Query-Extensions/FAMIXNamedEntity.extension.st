Extension { #name : #FAMIXNamedEntity }

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> belongsToMethod [
	^ self compiledMethodAt: #belongsTo ifAbsent: nil
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> resetAssociationTypesCaches [
	incomingAssociationTypes := outgoingAssociationTypes := nil
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
	"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetParentAndChildrenAccessors.
			aSubClass outgoingMSEPropertiesCache: nil.
			aSubClass incomingMSEPropertiesCache: nil.
			aSubClass resetAssociationTypesCaches ]
]
