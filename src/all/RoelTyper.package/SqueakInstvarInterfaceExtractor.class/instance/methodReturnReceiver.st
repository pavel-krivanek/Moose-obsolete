instruction decoding
methodReturnReceiver
	"Return Self bytecode."
	collector addAssignmentForReturnSelf.  
	^self
		pushReceiver;
		sqReturnTop