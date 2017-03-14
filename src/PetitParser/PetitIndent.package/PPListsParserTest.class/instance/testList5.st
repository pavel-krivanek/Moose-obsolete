as yet unclassified
testList5

	string :=
'
1) a
2) b
3) c
4) d
5) e
6) f
7) g
8) h
9) i
10) j
11) k
12) l
'.
	self parse: string.
	
	self assert: result size = 12.
	self assert: result first first = 'a'.
	self assert: result second first = 'b'.
	self assert: result third first = 'c'.