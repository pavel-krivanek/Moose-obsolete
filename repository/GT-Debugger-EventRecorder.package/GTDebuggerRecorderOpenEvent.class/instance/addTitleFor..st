accessing
addTitleFor: aDebugger
	(Privacy sendEntityNames or: [ self isTitleAKernelException: aDebugger title ]) ifTrue: [ self infoAt: #title put: aDebugger title ].