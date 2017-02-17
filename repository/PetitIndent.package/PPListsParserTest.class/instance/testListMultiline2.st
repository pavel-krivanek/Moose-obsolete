as yet unclassified
testListMultiline2

	| sublist |
	string :=
'
1) a
   a
   1.1) j
        j
   1.2) k
        k
        k
   1.3) l
2) b
   b
3) c
'.
	self parse: string.
	
	self assert: result size = 3.
	self assert: result first second = 'a'.
	self assert: result second second = 'b'.
	self assert: result third first = 'c'.
	
	sublist := result first third.
	self assert: sublist first second = 'j'.
	self assert: sublist second third = 'k'.	
	self assert: sublist third first = 'l'.