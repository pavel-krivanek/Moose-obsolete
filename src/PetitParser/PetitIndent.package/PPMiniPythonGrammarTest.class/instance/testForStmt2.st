test-grammar
testForStmt2

	self parse: 
'for ( w , x , y ) in words:
	print a
	print b
	print c
else :
	print d
	print e
' rule: #forStmt.

	self assert: result size = 4.
	self assert: result first = 'for:'.

	self assert: result second  size = 3.
	self assert: result second allSatisfy: [ :e | e = #print ].


	self assert: result third size = 2.
	self assert: result third allSatisfy: [ :e | e = #print ].




