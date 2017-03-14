test-grammar
testTry1Stmt7

self parse: 
'try : #something smart
	print x
except :
	print y
' rule: #try1Stmt.

	self assert: result size = 5.
	self assert: result first = 'try:'.
	
	self assert: result second size = 1.
	self assert: result second allSatisfy: [ :e | e = #print ].

	self assert: result third size = 1.
	self assert: result third first size = 1.
	self assert: result third first allSatisfy: [ :e | e = #print ].
	
	self assert: result fourth isEmpty.
	self assert: result fifth = ':try'.


