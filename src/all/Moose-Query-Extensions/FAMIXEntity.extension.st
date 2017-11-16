Extension { #name : #FAMIXEntity }

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> childrenAccessors [
	self
		deprecated: 'Use childrenSelectors instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver childrenAccessors' -> '`@receiver childrenSelectors'.
	^ self childrenSelectors
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> childrenSelectors [
	^ childrenAccessors
		ifNil: [ childrenAccessors := self privateChildrenSelectors ].
	
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> resetMSEProperties [
	"
	self resetMSEProperties
		"

	self allSubclasses
		do: [ :aSubClass | 
			aSubClass resetParentAndChildrenAccessors.]
]

{ #category : #'*Moose-Query-Extensions' }
FAMIXEntity class >> resetParentAndChildrenAccessors [
	childrenAccessors := nil.
	parentSelectors := nil.
	allChildrenTypes := nil.
	allParentTypes := nil
]
