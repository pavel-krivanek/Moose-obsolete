Class {
	#name : #FMMany,
	#superclass : #FMRelationSlot,
	#category : #'Fame-Core-Slots'
}

{ #category : #internal }
FMMany >> add: newObject to: collectionOwner [

	self checkValue: newObject.
	self hasInverse
		ifTrue: [ self addAssociationFrom: collectionOwner to: newObject ]

]

{ #category : #initialization }
FMMany >> initialize: anObject [

	self write: (FMSlotMultivalueLink on: anObject slot: self) to: anObject. 
	
]

{ #category : #initialization }
FMMany >> lazyInitializationFor: anObject slotValue: aSlotValue [

	| newLink |
	
	aSlotValue ifNotNil: [ ^ aSlotValue ].
	
	newLink := (FMSlotMultivalueLink on: anObject slot: self).

	thisContext object: anObject instVarAt: index put: newLink.
	
	^ newLink


]

{ #category : #'meta-object-protocol' }
FMMany >> mooseProperty [

	^ mooseProperty ifNil: [ 

		mooseProperty := FM3PropertyDescription new.
			
		mooseProperty name: self name asString.
		mooseProperty setImplementingSelector: self name. "should be a link to slot"

		mooseProperty isMultivalued: true.
		mooseProperty isDerived: true.
		
		mooseProperty privOpposite: self inverseSlot mooseProperty.
		
		mooseProperty ].
		
]

{ #category : #internal }
FMMany >> remove: oldObject from: collectionOwner [

	self hasInverse
		ifTrue: [ self removeAssociationFrom: collectionOwner to: oldObject ]

]
