instruction decoding
methodReturnConstant: value
	"Return Constant bytecode."
	collector addAssignmentForReturn: value class.  
	^self
		pushConstant: value;
		sqReturnTop