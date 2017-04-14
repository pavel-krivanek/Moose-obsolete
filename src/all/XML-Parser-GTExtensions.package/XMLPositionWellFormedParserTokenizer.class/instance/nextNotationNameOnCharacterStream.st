tokenizing - dtd
nextNotationNameOnCharacterStream
	driver handleStartNamePosition: self currentPosition + 1.
	super nextNotationNameOnCharacterStream.
	driver handleEndNamePosition: self currentPosition.