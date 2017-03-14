expressions
Reference2
	"Matches a Reference node (returns boolean)."
	"Reference --> OPEN REF n:Name { client referenceName: n } CLOSE"
	| pos n |
	pos := self pos.
	self tOPEN ifFalse: [ ^ self backtrack: pos ].
	self tREF ifFalse: [ ^ self backtrack: pos ].
	n := self tFULLNAME.
	nil ~~ n ifFalse: [ ^ self backtrack: pos ].
	client referenceName: n.
	self tCLOSE ifFalse: [ ^ self syntaxError ].
	self tWHITESPACE.
	^ true