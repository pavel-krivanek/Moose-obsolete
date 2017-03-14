accessing
unsetAt: index
	
	super
		at: index
		put: MalUnlimited positive.
	found = index ifTrue: [found := nil]