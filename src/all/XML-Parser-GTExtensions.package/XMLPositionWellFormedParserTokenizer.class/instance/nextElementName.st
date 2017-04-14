tokenizing
nextElementName
	| name |

	driver handleStartNamePosition: self currentPosition + 1.
	name := super nextElementName.
	driver handleEndNamePosition: self currentPosition.

	^ name.