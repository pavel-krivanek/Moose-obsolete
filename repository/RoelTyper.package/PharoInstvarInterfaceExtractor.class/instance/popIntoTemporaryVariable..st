instruction decoding
popIntoTemporaryVariable: offset
	"Remove Top Of Stack And Store Into Temporary Variable bytecode."

	"An empty stack => we are in a block"
	self inABlock ifFalse: [
	collector
		handleAssignment: stack removeLast
		forTmp: offset] ifTrue: [
			
		]