tokenizing - dtd
nextNmtokenOnCharacterStream
	driver handleStartNamePosition: self currentPosition + 1.
	super nextNmtokenOnCharacterStream.
	driver handleEndNamePosition: self currentPosition.