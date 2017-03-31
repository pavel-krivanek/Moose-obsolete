initialization
initialize
	super initialize.

	mutex := (XMLClassFinder classNamed: #Mutex) new.