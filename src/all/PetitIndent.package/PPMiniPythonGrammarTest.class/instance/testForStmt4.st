test-grammar
testForStmt4

self parse: 
'for ( w , x , y ) in words:
	if  x== y :
		print a
		print b
else :
	print d
' rule: #forStmt.

	self assert: result size = 4.
	self assert: result first = 'for:'.

	self assert: result second size = 1.
	self assert: result second first first = 'if:'.
	self assert: result second first second size = 2.
	self assert: result second first second allSatisfy: [ :e | e = #print ].
	self assert: result second first third size = 0.

	
	self assert: result third size = 1.
	self assert: result third allSatisfy: [ :e | e = #print ].




