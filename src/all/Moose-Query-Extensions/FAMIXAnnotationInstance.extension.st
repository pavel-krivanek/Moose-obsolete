Extension { #name : #FAMIXAnnotationInstance }

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> childrenAccessors [
	self
		deprecated: 'Use childrenSelectors instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver childrenAccessors' -> '`@receiver childrenSelectors'.
	^ self childrenSelectors
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> incomingMSEProperties [
	^ #()
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> outgoingMSEProperties [
	^ #()
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXAnnotationInstance class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := nil.
	parentSelectors := nil.
	allChildrenTypes := nil.
	allParentTypes := nil
]
