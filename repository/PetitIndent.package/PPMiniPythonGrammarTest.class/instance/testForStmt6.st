test-grammar
testForStmt6

self parse: 
'for r in reversed(queens[:-1]):
    print b
' rule: #forStmt.

	self assert: result size = 4.
	self assert: result first = 'for:'.
	self assert: result second first = #print.