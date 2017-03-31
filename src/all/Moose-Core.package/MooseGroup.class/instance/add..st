adding/removing
add: anElement 
	 
	super add: anElement. 
	self updateTypeAccordingToEntities.
	^ anElement 