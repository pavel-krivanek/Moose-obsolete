loading
resetMooseNameFor: anEntity 
	self entityStorage resetMooseNameFor: anEntity.
	" this is safe, but probably a bit overdone "
	self privateState flushGroups