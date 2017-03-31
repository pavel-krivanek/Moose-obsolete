test-grammar
testPrintStmt

	self parse: 'print 1' rule: #printStmt.
	self parse: 'print 12' rule: #printStmt.
	self parse: 'print abc' rule: #printStmt.