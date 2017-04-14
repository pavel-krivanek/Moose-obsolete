tokenizing - dtd
nextNotationName
	| name |

	driver handleStartNamePosition: self currentPosition + 1.
	name := super nextNotationName.
	driver handleEndNamePosition: self currentPosition.

	^ name.