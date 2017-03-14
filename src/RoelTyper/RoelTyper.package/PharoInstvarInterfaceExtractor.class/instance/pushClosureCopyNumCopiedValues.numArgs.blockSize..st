instruction decoding
pushClosureCopyNumCopiedValues: numCopied numArgs: numArgs blockSize: blockSize
	self newBlockMapping.
	self blocksArgsBySize add: blockSize + input pc - 1.
	1 to: numArgs do: [:index | self blockMapping add: #blockArg->index.].
	numCopied timesRepeat: [ self blockMapping add: stack removeLast afterIndex: numArgs]. 
	stack addLast: #block.
	blockArgs := numArgs.
	