internal
removeAssociationFrom: ownerObject to: otherObject
	"A reference from <ownerObject> to <otherObject> is removed. Here we update the other 
	side of the association. If the other side is a ToOne association set the value to nil,
	for ToMany associations remove <ownerObject> from the collection." 

	| realInverseSlot |
	
	realInverseSlot := (self realInverseSlotFor: otherObject).

	realInverseSlot isToOneSlot
		ifTrue: [ realInverseSlot writeInverse: nil to: otherObject ]
		ifFalse: [ (realInverseSlot read: otherObject) inverseRemove: ownerObject ]