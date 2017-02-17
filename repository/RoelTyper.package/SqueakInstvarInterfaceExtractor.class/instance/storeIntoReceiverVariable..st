instruction decoding
storeIntoReceiverVariable: offset
	"Store Top Of Stack Into Instance Variable Of Method bytecode."

	| rvalue |
	collector
		handleAssignment: (rvalue := stack removeLast)
		for: offset.
	stack add: rvalue