initialization
initialize: anObject

	self write: (FMSlotMultivalueLink on: anObject slot: self) to: anObject. 
	