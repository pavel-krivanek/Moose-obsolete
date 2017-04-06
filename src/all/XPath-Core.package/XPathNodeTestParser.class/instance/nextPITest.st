parsing
nextPITest
	self peekForPITestTarget
		ifFalse: [
			context handlePINodeTestWith: handler].
	self nextEndArgumentList.