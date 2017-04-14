tokenizing - dtd
nextElementNameOnCharacterStream
	driver handleStartNamePosition: self currentPosition + 1.
	super nextElementNameOnCharacterStream.
	driver handleEndNamePosition: self currentPosition.