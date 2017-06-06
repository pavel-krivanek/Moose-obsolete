expressions
Serial
	"Matches a serial number node (returns boolean)."
	"Serial --> OPEN ID n:Identifier { client serial: n } CLOSE"
	| pos serial |
	pos := self pos.
	self tOPEN ifFalse: [ ^ self backtrack: pos ].
	self tID ifFalse: [ ^ self backtrack: pos ].
	serial := self Identifier.
	serial ifNil: [ ^ self backtrack: pos ].
	client serial: serial.
	self tCLOSE ifFalse: [ self syntaxError ].
	self tWHITESPACE.
	^ true