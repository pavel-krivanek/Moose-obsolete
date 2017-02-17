tests
testCyclomaticComplexity
	self assert: (model allMethods entityNamed: #'moose::lan::server::PrintServer.output(Packet)') cyclomaticComplexity equals: 2