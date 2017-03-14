test-grammar
testFile01
	code := '
name = raw_input(''What is your name?\n'')
print ''Hi, %s.'' % name
'.
	self parse: code.
	
	self assert: result size = 1.
	self assert: result first = #print.
