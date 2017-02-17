examples-expecting-performance
shouldSignalWhenRunWithinFails
	[ [ (Delay forMilliseconds: 20) wait ] should runWithin: 10 milliSeconds ] should signal: TestFailure