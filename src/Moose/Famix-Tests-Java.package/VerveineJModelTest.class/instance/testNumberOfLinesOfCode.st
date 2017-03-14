tests
testNumberOfLinesOfCode
	self assert: (model allMethods entityNamed: #'moose::lan::server::PrintServer.output(Packet)') numberOfLinesOfCode equals: 9