instruction decoding
pushTemporaryVariable: offset 
	"Push Contents Of Temporary Variable Whose Index Is the 
	argument, offset, On Top Of Stack bytecode."
	self inABlock
		ifTrue: [stack
				add: (self blockMapping
						at: offset + 1
						ifAbsent: [#blockTemp -> (offset - self blockMapping size)])]
		ifFalse: [stack add: #temp -> offset]