meta information
resetMooseName
	super resetMooseName.
	self childrenEntities do: [ :entity | entity resetMooseName ]