as yet unclassified
testList1

	string :=
'
1) a
2) b
3) c
'.
	self parse: string.
	
	self assert: result size = 3.
	self assert: result first first = 'a'.
	self assert: result second first = 'b'.
	self assert: result third first = 'c'.
