instruction decoding
storeIntoTemporaryVariable: offset
	"Store Top Of Stack Into Temporary Variable Of Method bytecode."

	"Nothing to do,since I do not treat temporary variables for the moment."
	

	| rvalue |
	blockTraversal ifTrue: [blockArgs > 0 ifTrue: [stack addLast: #temp -> offset. collector transformAsBlockArgTheTmpOffset: offset]. blockArgs := blockArgs - 1. blockTraversal := (blockArgs > 0) ].  
	collector
		handleAssignment: (rvalue := stack removeLast)
		forTmp: offset.
	stack add: rvalue