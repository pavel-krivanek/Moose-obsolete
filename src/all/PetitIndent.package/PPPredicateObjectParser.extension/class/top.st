*PetitIndent
top
	"Evaluate top of the indent stack"
	^ [ :ctx | 
		ctx indentStack isEmpty ifFalse: [ 
			ctx indentStack top parseOn: ctx 
		] ifTrue: [ 
			PPFailure message: 'IndentStack is empty' context: ctx 
		]
	] asParser