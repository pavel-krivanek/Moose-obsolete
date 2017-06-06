expressions
Identifier
	"Matches numerical identifier (returns Number or nil)."

	"Identifier := digit+"

	(self characterSet isDigit: char)
		ifFalse: [ ^ nil ].
	
	buf reset.
	buf nextPut: char.
	[ self characterSet isDigit: self next ] whileTrue: [ buf nextPut: char ].
	self tWHITESPACE.
	^ Integer readFrom: buf contents readStream