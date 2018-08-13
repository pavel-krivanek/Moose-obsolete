variables
initialize

	super initialize.
	
	self owner environment backend createUnresolvedTraitGroupFor: self owner.
	