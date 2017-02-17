indentation
aligns
	^ [ :context | 
		context indentStack isEmpty ifFalse: [ 
			context indentStack top parseOn: context ] 
	] asParser