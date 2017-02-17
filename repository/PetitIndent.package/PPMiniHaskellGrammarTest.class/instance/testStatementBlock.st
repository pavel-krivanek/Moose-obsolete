test-grammar
testStatementBlock
	statementBlock := self parserInstanceFor: #statementBlock.
	
	self assert: statementBlock parse: 'print 1'.
	self assert: result size = 1.
	
	self assert: statementBlock parse: 'print 1
print 2'.

	parser := #space asParser star, statementBlock ==> #second.
	self assert: parser parse: '
    print 1
    print 2
    print 3
'.
	self assert: result size = 3.
	
	
	parser := #space asParser star, statementBlock ==> #second.
	self assert: parser parse: '
    print 1
    print 2
   print 3
' end: 25.
	self assert: result size = 2.
