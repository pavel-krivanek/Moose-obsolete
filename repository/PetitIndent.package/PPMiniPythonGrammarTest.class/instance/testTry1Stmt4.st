test-grammar
testTry1Stmt4

self parse: 
'try :
	print x
except :
	print y
else :
	if x==y :
		print x
finally :
	print t
' rule: #try1Stmt.


	"try finally"
	self assert: result size = 4.
	self assert: result first = 'try:'.
	
	"try-except"
	self assert: result second size = 5.
	self assert: result second first = 'try:'.
	
	self assert: result second second size = 1.
	self assert: result second second allSatisfy: [ :e | e = #print ].

	self assert: result second third size = 1.
	self assert: result second third first size = 1.
	self assert: result second third first allSatisfy: [ :e | e = #print ].
	
	self assert: result second fourth size = 1.
	self assert: result second fourth first first = 'if:'.
	self assert: result second fourth first second size = 1.
	self assert: result second fourth first third size = 0.

	self assert: result third size = 1.
	self assert: result third allSatisfy: [ :e | e = #print ].

