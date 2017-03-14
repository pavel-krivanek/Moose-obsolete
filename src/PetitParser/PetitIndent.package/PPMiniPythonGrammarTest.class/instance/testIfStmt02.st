test-grammar
testIfStmt02

	self parse: 
'if x < y :
		print x
		print 2
else :
		print 1' 
	rule: #ifStmt.

	self assert: result size = 4.
	self assert: result first = 'if:'.

	self assert: result second size = 2.
	self assert: result second allSatisfy: [ :e | e = #print ].
	self assert: result third size = 1.
	self assert: result second allSatisfy: [ :e | e = #print ].
