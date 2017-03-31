accessing
parentScope: aScopingEntity 
	parentScope := FMMultivalueLink 
		on: self
		update: #globalVariables
		from: self parentScope
		to: aScopingEntity