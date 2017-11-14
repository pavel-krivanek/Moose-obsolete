parsing
nextPITest
	self peekForPITestTarget
		ifFalse: [
			state handlePINodeTestWith: handler].
	self nextEndArgumentList.