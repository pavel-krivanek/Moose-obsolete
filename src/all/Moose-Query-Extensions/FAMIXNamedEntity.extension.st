Extension { #name : #FAMIXNamedEntity }

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> belongsToMethod [
	^ self compiledMethodAt: #belongsTo ifAbsent: nil
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> childrenAccessors [
	self
		deprecated: 'Use childrenSelectors instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver childrenAccessors' -> '`@receiver childrenSelectors'.
	^ self childrenSelectors
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXNamedEntity class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := parentSelectors := allChildrenTypes := allParentTypes := outgoingMSEProperties := incomingMSEProperties := incomingAssociationTypes := outgoingAssociationTypes := nil
]
