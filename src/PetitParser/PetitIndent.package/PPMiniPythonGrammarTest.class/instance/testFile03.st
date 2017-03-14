test-grammar
testFile03
	code := '
def greet(name):
    print ''Hello '', name
greet(''Jack'')
greet(''Jill'')
greet(''Bob'')
'.
	self parse: code.
	
	self assert: result size = 4.
	self assert: result first = 'fundef:'.
	self assert: result second = 'greet'.
	self assert: result third = #print.
	self assert: result fourth = ':fundef'.
