copying
postCopy  
	super postCopy.
	elements := elements copy.
	byName := byName copy.
	byType := byType copy