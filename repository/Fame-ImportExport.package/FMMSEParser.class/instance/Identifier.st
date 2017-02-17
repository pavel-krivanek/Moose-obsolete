expressions
Identifier
	"Matches numerical identifier (returns Number or nil)."
	"Identifier := digit+"
	char isDigit ifFalse: [ ^ nil ].
	buf reset.
	buf nextPut: char.
	[ self next isDigit ] whileTrue: [ buf nextPut: char ].
	self tWHITESPACE.
	^ Integer readFrom: buf contents readStream