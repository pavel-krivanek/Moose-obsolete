instruction decoding
popIntoReceiverVariable: offset
	"Remove Top Of Stack And Store Into Instance Variable bytecode."

	collector
		handleAssignment: stack removeLast
		for: offset