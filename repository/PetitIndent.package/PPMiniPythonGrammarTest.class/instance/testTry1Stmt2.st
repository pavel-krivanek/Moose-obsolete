test-grammar
testTry1Stmt2

self parse: 
'try :
	print x
except :
	print y
	print y
else :
	print z
finally:
	print d
' rule: #try1Stmt.

	"try-finally"
	self assert: result size = 4.
	self assert: result first = 'try:'.
	
	self assert: result second size = 5.
	self assert: result second first = 'try:'.

	"body"
	self assert: result second second size = 1.
	self assert: result second allSatisfy: [ :e | e = #print ].

	"excepts"
	self assert: result second third size = 1.
	self assert: result second third first size = 2.
	self assert: result second third first allSatisfy: [ :e | e = #print ].
	
	"else"
	self assert: result second fourth size = 1.
	self assert: result second fourth allSatisfy: [ :e | e = #print ].

	"finally"
	self assert: result third size = 1.
	self assert: result third allSatisfy: [ :e | e = #print ].

