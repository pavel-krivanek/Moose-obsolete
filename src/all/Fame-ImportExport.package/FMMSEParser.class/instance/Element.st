expressions
Element
	"Matches an element node (returns boolean)."
	"Element := OPEN n:FULLNAME { beginElement(n) } Serial? Attribute* CLOSE { endElement(n) }"
	| pos n |
	pos := self pos.
	self tOPEN ifFalse: [ ^ self backtrack: pos ].
	n := self tFULLNAME.
	nil ~~ n ifFalse: [ ^ self backtrack: pos ].
	client beginElement: n.
	self Serial.
	[ self Attribute ] whileTrue.
	self tCLOSE ifFalse: [ ^ self syntaxError ].
	client endElement: n.
	self tWHITESPACE.
	
	self increment. "UI stuff"
	^ true