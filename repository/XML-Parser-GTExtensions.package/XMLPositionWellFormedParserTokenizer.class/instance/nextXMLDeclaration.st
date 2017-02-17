tokenizing
nextXMLDeclaration
	driver handleStartXMLDeclarationPosition: self currentPosition - 4. "'<?xml' size"
	super nextXMLDeclaration.
	driver handleEndXMLDeclarationPosition: self currentPosition.