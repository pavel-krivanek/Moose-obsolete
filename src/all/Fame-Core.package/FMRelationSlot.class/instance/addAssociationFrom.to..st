internal
addAssociationFrom: ownerObject to: otherObject
	"A new reference from <ownerObject> to <otherObject> is created. Here we update the other 
	side of the association. If the other side is a ToOne association this means that an other
	association may have to be removed first."
	
	| realInverseSlot |
	
	realInverseSlot := self realInverseSlotFor: otherObject.

	realInverseSlot isToOneSlot
		ifTrue: [ 
			| oldObject |
			oldObject := realInverseSlot read: otherObject.
			oldObject notNil
				ifTrue: [ realInverseSlot removeAssociationFrom: otherObject to: oldObject ].
			realInverseSlot writeInverse: ownerObject to: otherObject ]
		ifFalse: [ 
			(realInverseSlot read: otherObject) inverseAdd: ownerObject ]