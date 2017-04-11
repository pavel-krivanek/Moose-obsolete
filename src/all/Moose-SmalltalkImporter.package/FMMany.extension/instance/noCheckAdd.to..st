*Moose-SmalltalkImporter-nocheckAdding
noCheckAdd: newObject to: collectionOwner

	self hasInverse
		ifTrue: [ self addAssociationFrom: collectionOwner to: newObject ]
