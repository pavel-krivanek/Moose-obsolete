test-grammar
testTry1Stmt6

self parse: 
'try:
	print a
except Foo:
	print b
else:
	print c
finally:
	print 	d
' rule: #try1Stmt.

	"try-finally"
	self assert: result size = 4.
	self assert: result first = 'try:'.
	
	"try-except"
	self assert: result second size = 5.
	self assert: result second first = 'try:'.
	self assert: result second second first = #print.
	self assert: result second third first first = #print.
	
	self assert: result second fourth size = 1.
	self assert: result second fourth first = #print.

	self assert: result third size = 1.
	
	self assert: result fourth = ':try'.

