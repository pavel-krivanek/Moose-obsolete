running
runWithProfiler 
	Smalltalk isInteractive 
		ifTrue: [self profile]
		ifFalse: [self run]