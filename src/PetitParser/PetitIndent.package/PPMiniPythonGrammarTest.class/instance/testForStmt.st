test-grammar
testForStmt

	self parse: 
'for w in words:
	print test
	print abc
	print def
' 	rule: #forStmt.

	self assert: result size = 4.
	self assert: result first = 'for:'.

	self assert: result second  size = 3.
	self assert: result second allSatisfy: [ :e | e = #print ].


	self assert: result third  isEmpty.




