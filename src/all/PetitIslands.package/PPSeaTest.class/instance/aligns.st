indentation
aligns
	^ [ :ctx | 
		ctx indentStack isEmpty ifFalse: [ 
			ctx indentStack top parseOn: ctx ] 
		ifTrue: [ PPFailure message: 'stack is empty' context: ctx ]
	] asParser