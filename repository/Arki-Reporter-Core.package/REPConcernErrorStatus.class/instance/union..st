accessing
union: aStatus
	^ (aStatus isSuccessStatus or: [ aStatus isFailureStatus ])
		ifTrue: [ aStatus species new ]
		ifFalse: [ REPConcernNeutralStatus new ]