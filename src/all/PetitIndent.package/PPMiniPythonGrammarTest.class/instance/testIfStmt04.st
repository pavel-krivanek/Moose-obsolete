test-grammar
testIfStmt04

	self parse: 
'if x < y :
	print 1
	print 2
else :
	print 3
	print 4
' rule: #ifStmt.

	self assert: result size = 4.
	self assert: result first = 'if:'.

	self assert: result second size = 2.
	self assert: result second allSatisfy: [ :e | e = #print ].
	self assert: result third size = 2.
	self assert: result second allSatisfy: [ :e | e = #print ].
