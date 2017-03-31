tokens
tCLOSE
	"Matches opening parenthesis (returns boolean)."
	^ $) == char 
		ifTrue: 
			[ self
				next;
				tWHITESPACE.
			true ]
		ifFalse: [ false ]