tests
testNumberOfStatements
	self assert: (model allMethods entityNamed: #'moose::lan::server::PrintServer.output(Packet)') numberOfStatements equals: 7