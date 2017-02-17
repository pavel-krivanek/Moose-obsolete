accessing
mainLibrary
	tower isNil ifTrue: [ 
		| pp |
		pp := FMPragmaProcessor new.
		pp queue: (Array with: LIBBook with:  LIBLibrary with:  LIBPerson).
		pp run.
		tower := pp asTower ].
	^tower