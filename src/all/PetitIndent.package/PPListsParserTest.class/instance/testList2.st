as yet unclassified
testList2

	| sublist |
	string :=
'
1) a
   1.1) j
   1.2) k
   1.3) l
2) b
3) c
'.
	self parse: string.
	
	self assert: result size = 3.
	self assert: result first first = 'a'.
	self assert: result second first = 'b'.
	self assert: result third first = 'c'.
	
	sublist := result first second.
	self assert: sublist first first = 'j'.
	self assert: sublist second first = 'k'.	
	self assert: sublist third first = 'l'.