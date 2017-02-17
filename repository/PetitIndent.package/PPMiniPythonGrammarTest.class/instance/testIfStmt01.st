test-grammar
testIfStmt01

	self parse: 
	'if x < y :
		print x
		print y
		print z' rule: #ifStmt.

	self assert: result size = 4.
	self assert: result first = 'if:'.

	self assert: result second  size = 3.
	self assert: result second allSatisfy: [ :e | e = #print ].


	self assert: result third  isEmpty.




