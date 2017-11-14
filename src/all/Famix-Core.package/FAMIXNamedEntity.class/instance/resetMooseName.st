meta information
resetMooseName
	super resetMooseName.
	self children do: [ :entity | entity resetMooseName ]