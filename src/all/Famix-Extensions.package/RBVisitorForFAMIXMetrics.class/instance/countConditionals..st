enumerating
countConditionals: sel
	
	(#(#ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue: #whileTrue #whileTrue: #whileFalse #whileFalse:)
		includes: sel)
		ifTrue: [self numberOfConditionals: self numberOfConditionals + 1]