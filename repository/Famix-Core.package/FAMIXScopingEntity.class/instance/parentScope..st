accessing
parentScope: aScopingEntity 
	parentScope := FMMultivalueLink 
		on: self
		update: #childScopes
		from: self parentScope
		to: aScopingEntity.
	self resetMooseName