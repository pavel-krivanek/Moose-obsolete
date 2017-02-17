initialization
initialize 
	 
	super initialize. 
	mooseID := MooseModel freshID.
	state := self defaultStateClass with: self