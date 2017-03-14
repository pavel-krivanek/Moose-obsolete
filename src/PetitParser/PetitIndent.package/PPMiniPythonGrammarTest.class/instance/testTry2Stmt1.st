test-grammar
testTry2Stmt1

self parse: 
'try :
	print x
finally :
	print y
' rule: #try2Stmt.


	self assert: result size = 4.
	self assert: result first = 'try:'.
	
	self assert: result second size = 1.
	self assert: result second allSatisfy: [ :e | e = #print ].

	self assert: result third size = 1.
	self assert: result third allSatisfy: [ :e | e = #print ].

