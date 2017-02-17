test-grammar
testFile02
	code := '
friends = [''john'', ''pat'', ''gary'', ''michael'']
for i, name in enumerate(friends):
    print "iteration {iteration} is {name}".format(iteration=i, name=name)'.
	self parse: code.
	
	self assert: result size = 3.
	self assert: result first = 'for:'.
	self assert: result second = #print.
	self assert: result third = ':for'.
