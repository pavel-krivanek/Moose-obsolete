tokenizing
nextPIWithTarget: aTarget
	driver handleStartPIPosition: self currentPosition - (aTarget size + 1).
	super nextPIWithTarget: aTarget.
	driver handleEndPIPosition: self currentPosition.