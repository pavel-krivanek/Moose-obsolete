initialize-release
initialize 
	super initialize.
	newViewBlock := [ RTView new ].
	shouldPopulateSelection := true.
	self defaultActions