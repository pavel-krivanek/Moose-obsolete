tokenizing - dtd
nextSubsetDeclaration
	driver handleStartDeclaration: self currentPosition - 1.
	super nextSubsetDeclaration.
	driver handleEndDeclaration: self currentPosition.