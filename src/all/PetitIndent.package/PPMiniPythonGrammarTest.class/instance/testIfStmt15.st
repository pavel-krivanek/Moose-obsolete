test-grammar
testIfStmt15

	self parse: 
	'if(x):
		print x
		print z' rule: #ifStmt.

	self assert: result size = 4.
	self assert: result first = 'if:'.

	self assert: result second  size = 2.
	self assert: result second allSatisfy: [ :e | e = #print ].


	self assert: result third  isEmpty.




