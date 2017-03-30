initialization
initialize 
	 
	super initialize. 
	self class initializeSlots: self.
	mooseID := MooseModel freshID.
	state := self defaultStateClass with: self