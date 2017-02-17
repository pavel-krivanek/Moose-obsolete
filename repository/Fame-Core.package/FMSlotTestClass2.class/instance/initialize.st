initialization
initialize
	super initialize.
	self class initializeSlots: self.
	name = UUID new asString.