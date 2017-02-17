accessing
parentType: aType 
	parentType := FMMultivalueLink 
		on: self
		update: #attributes
		from: self parentType
		to: aType.
	self resetMooseName