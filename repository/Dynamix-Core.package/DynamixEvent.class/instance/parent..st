accessing
parent: anEvent
	parent := FMMultivalueLink 
		on: self
		update: #children
		from: self parent
		to: anEvent