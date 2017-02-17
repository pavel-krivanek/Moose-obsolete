test
testArithmeticUnity
	| a |
	a := self matrixClass new: 2 withAll: #(1 2 3 4).
	self assert: MalMatrix unity * a equals: a.
	self assert: (MalMatrix unity + a) asArray equals: #(2 3 4 5).
	self assert: MalMatrix unity * MalMatrix unity equals: MalMatrix unity.
	self assert: (MalMatrix unity + MalMatrix unity) asNumber equals: 2.
	self assert: MalMatrix unity + MalMatrix zero equals: MalMatrix unity