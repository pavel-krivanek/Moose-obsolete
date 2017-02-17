test-grammar
testFile10
	code := '
if foobar :
	print a
elif barfoo :
	print b
elif bazbar :
	print c
else :
	print d
'.
	self parse: code.
	
	self assert: (result joinUsing: String cr) = 
'if:
print
if:
print
if:
print
print
:if
:if
:if'
