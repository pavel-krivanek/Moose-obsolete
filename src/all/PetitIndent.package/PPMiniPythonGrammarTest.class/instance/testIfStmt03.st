test-grammar
testIfStmt03

	self parse: 
'if x < y :
	if x== y :
		print 1
	else :
		print 2
else :
	print z' rule: #ifStmt.

	self assert: result size = 4.
	self assert: result first = 'if:'.

	self assert: result second size = 1.
	self assert: result second first first = 'if:'.
	self assert: result second first second allSatisfy: [ :e | e = #print ].
	self assert: result second first third  allSatisfy: [ :e | e = #print ].

	self assert: result third size = 1.
	self assert: result second allSatisfy: [ :e | e = #print ].
