running
tearDown
	super tearDown.
	
	GTExampleOrganizer reset; start.
	Smalltalk garbageCollect