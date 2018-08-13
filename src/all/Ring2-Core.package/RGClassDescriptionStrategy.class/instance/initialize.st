initialization
initialize

	super initialize.
	
	layout := self unresolvedValue: self defaultLayout. 
	self owner environment backend createUnresolvedClassGroupFor: self owner.