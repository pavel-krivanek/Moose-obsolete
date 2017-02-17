as yet unclassified
testList6

	string :=
'
1) a
2) b
9) i
   1) ia
   2) ib
10) j
    1) ja
    2) jb
11) k
12) l
'.
	self parse: string.
	
	self assert: result size = 6.
	self assert: result first first = 'a'.
	self assert: result second first = 'b'.
	self assert: result third second first first = 'ia'.
	self assert: result third second second first = 'ib'.
	self assert: result fourth second first first = 'ja'.
	self assert: result fourth second second first = 'jb'.
	