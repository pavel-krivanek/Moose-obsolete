tokens
tNAME
	char isLetter ifFalse: [ ^ nil ].
	buf reset.
	buf nextPut: char.
	[ self next isAlphaNumeric or: [char == $_] ] whileTrue: [ buf nextPut: char ].
	self tWHITESPACE.
	^ buf contents