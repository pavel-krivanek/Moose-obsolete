test-grammar
testPrintStmt2

	self parse: 'print "%d items processed (%s)" % (fileinput.lineno(),
                                                   fileinput.filename())' rule: #printStmt.