as yet unclassified
testList3

	| sublist |
	string :=
'
1) a
   1.1) j
   1.2) k
   1.3) l
   aa
2) b
3) c
   3.1) m
   3.2) n
   3.3) o
'.
	self parse: string.
	
	self assert: result size = 3.
	self assert: result first first = 'a'.
	self assert: result first third = 'aa'.
	self assert: result second first = 'b'.
	self assert: result third first = 'c'.
	
	sublist := result first second.
	self assert: sublist first first = 'j'.
	self assert: sublist second first = 'k'.	
	self assert: sublist third first = 'l'.

	sublist := result third second.
	self assert: sublist first first = 'm'.
	self assert: sublist second first = 'n'.	
	self assert: sublist third first = 'o'.	