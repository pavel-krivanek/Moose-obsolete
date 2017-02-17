accessing
addSourceFor: aDebugger
	(Privacy sendSourceCode and: [ self isTitleAKernelException: aDebugger title ]) ifTrue: [ self infoAt: #source put: aDebugger currentContext sourceCode ].