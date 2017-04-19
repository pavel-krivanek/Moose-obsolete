tokenizing
nextEndTag
	| startPosition |

	startPosition := self currentPosition + 2.
	super nextEndTag.
	driver
		handleStartNamePosition: startPosition;
		handleEndNamePosition: self currentPosition - 1.