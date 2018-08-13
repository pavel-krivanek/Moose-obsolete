Class {
	#name : #FMOne,
	#superclass : #FMRelationSlot,
	#category : #'Fame-Core-Slots'
}

{ #category : #testing }
FMOne >> isToOneSlot [

	^true
]

{ #category : #'meta-object-protocol' }
FMOne >> mooseProperty [

	^ mooseProperty ifNil: [ 

		mooseProperty := FM3PropertyDescription new.
		
		mooseProperty name: self name asString.
		mooseProperty setImplementingSelector: self name. "should be a link to slot"

		mooseProperty isMultivalued: false.
		mooseProperty isDerived: true.
		
		mooseProperty privOpposite: self inverseSlot mooseProperty.
		
		mooseProperty ].

]

{ #category : #'meta-object-protocol' }
FMOne >> write: newValue to: anObject [

	| oldValue |

	oldValue := self read: anObject.
	newValue notNil
		ifTrue: [ self checkValue: newValue ].
	self hasInverse 
		ifTrue: [ 
			oldValue notNil
				ifTrue: [ self removeAssociationFrom: anObject to: oldValue ].
			newValue notNil
				ifTrue: [ self addAssociationFrom: anObject to: newValue ] ].
		
	super write: newValue to: anObject
]

{ #category : #internal }
FMOne >> writeInverse: newValue to: anObject [
	^anObject instVarAt: index put: newValue
]
