accessing
parentType: aType 
	parentType := FMMultivalueLink 
		on: self
		update: #methods
		from: self parentType
		to: aType.
	self resetMooseName