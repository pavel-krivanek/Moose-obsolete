accessing
union: aStatus
	^ aStatus isFailureStatus 
		ifTrue: [ aStatus species new ]
		ifFalse: [ self species new ]