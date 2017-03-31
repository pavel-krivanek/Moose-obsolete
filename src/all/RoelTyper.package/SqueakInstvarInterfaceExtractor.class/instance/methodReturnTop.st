instruction decoding
methodReturnTop
	"Return Top Of Stack bytecode."
	collector addAssignmentForReturn: stack last.
	^self sqReturnTop