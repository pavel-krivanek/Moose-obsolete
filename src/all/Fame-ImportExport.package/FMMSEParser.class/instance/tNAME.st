tokens
tNAME
	(self characterSet isLetter: char) ifFalse: [ ^ nil ].
	
	buf reset.
	buf nextPut: char.
	[ self nextCharIsAlphanumeric or: [char == $_] ] whileTrue: [ buf nextPut: char ].
	self tWHITESPACE.
	^ buf contents