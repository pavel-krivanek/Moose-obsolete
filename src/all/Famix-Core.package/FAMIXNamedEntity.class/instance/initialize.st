initialization
initialize
	super initialize.
	name := nil.
	isStub := false.
	modifiers := Set new.
	self class initializeSlots: self.