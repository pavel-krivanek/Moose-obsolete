tokenizing
nextXMLAttributeName: aName
	| startPosition |

	startPosition := self currentPosition + 1.
	driver handleStartQuotedStringNamePosition: startPosition.
	super nextXMLAttributeName: aName.
	driver handleEndQuotedStringNamePosition: startPosition + aName size - 1.