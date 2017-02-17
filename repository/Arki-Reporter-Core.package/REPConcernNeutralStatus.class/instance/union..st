accessing
union: aStatus
	^ aStatus isErrorStatus 
		ifTrue: [self species new]
		ifFalse: [aStatus species new]