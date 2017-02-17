test-grammar
testFile09
	code := '
if foobar :
	print a
elif barfoo :
	print b
else :
	print c
'.
	self parse: code.
	
	self assert: (result joinUsing: String cr) = 
'if:
print
if:
print
print
:if
:if'
