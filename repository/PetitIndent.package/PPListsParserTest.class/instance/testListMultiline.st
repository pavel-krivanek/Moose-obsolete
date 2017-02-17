as yet unclassified
testListMultiline

	string :=
'
1) a
   a
2) b
   b
3) c
   c
   c
'.
	self parse: string.
	
	self assert: result size = 3.
	self assert: result first first = 'a'.
	self assert: result first second = 'a'.
	self assert: result second first = 'b'.
	self assert: result second second = 'b'.
	self assert: result third first = 'c'.
	self assert: result third second = 'c'.
	self assert: result third third = 'c'.
