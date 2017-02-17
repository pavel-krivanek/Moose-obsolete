tokenizing
nextCDataSection
	driver handleStartCDataPosition: self currentPosition - 1.
	super nextCDataSection.
	driver handleEndCDataPosition: self currentPosition.