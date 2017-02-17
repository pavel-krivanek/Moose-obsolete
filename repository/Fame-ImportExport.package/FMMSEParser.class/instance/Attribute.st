expressions
Attribute
	"Matches an attribute node (returns boolean)."
	"Attribute := OPEN n:NAME { beginAttribute(n) } Value* CLOSE { endAttribute(n) }"
	| pos n |
	pos := self pos.
	self tOPEN ifFalse: [ ^ self backtrack: pos ].
	n := self tNAME.
	nil ~~ n ifFalse: [ ^ self backtrack: pos ].
	client beginAttribute: n.
	[ self Value ] whileTrue.
	self tCLOSE ifFalse: [ ^ self syntaxError ].
	client endAttribute: n.
	self tWHITESPACE.
	^ true