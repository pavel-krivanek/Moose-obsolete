*PetitIndent
pop
	"pop myself from the indent stack, fail if I am not on top of the stack"
	^ [:context | 
			| retval |
			retval := context indentStack pop.
			(retval = self) ifFalse: [ 
				PPFailure message: self asString, 'is not on top of the stack, cannot pop!'
			] ifTrue: [  
				retval
			] 
	] asParser