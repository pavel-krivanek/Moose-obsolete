expressions
Reference
	"Matches a Reference node (returns boolean)."
	"Reference --> OPEN REF n:Identifier { client referenceNumber: n } CLOSE"
	| pos serial |
	pos := self pos.
	self tOPEN ifFalse: [ ^ self backtrack: pos ].
	self tREF ifFalse: [ ^ self backtrack: pos ].
	serial := self Identifier.
	nil ~~ serial ifFalse: [ ^ self backtrack: pos ].
	client referenceNumber: serial.
	self tCLOSE ifFalse: [ ^ self syntaxError ].
	self tWHITESPACE.
	^ true