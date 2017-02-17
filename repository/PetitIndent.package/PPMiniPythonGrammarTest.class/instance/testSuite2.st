test-grammar
testSuite2

self parse: 
'	try:
		print a
		if len(test_queens) == BOARD_SIZE:
			print b
		else:
			print c
			return add_queen(test_queens)
	except BailOut:
			print d
' rule: #suite.

	result := result first.
	"try-except"
	self assert: result size = 5.
	self assert: result first = 'try:'.
	
	self assert: result second size = 2.
	self assert: result second first = #print.
	self assert: result second second first = 'if:'.
	self assert: result second second third size = 2.

	self assert: result third size = 1.

