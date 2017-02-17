tokenizing
nextTag
	driver handleStartTagPosition: self currentPosition.
	super nextTag.
	driver handleEndTagPosition: self currentPosition.