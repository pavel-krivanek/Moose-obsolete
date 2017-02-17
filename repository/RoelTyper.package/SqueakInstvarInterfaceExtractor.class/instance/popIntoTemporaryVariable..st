instruction decoding
popIntoTemporaryVariable: offset
	"Remove Top Of Stack And Store Into Temporary Variable bytecode."

	"An empty stack => we are in a block"
	
	blockTraversal ifTrue: [blockArgs > 0 ifTrue: [stack addLast: #temp -> offset. collector transformAsBlockArgTheTmpOffset: offset]. blockArgs := blockArgs - 1. blockTraversal := (blockArgs > 0) ].  
	collector
		handleAssignment: stack removeLast
		forTmp: offset