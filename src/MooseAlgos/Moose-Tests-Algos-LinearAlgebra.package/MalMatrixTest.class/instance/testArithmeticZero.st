test
testArithmeticZero
	| a |
	a := self matrixClass new: 2 withAll: #(1 2 3 4).
	self assert: MalMatrix zero * a equals: MalMatrix zero.
	self assert: MalMatrix zero + a equals: a.
	self assert: MalMatrix zero * MalMatrix zero equals: MalMatrix zero.
	self assert: MalMatrix zero + MalMatrix zero equals: MalMatrix zero.
	self assert: MalMatrix unity * MalMatrix zero equals: MalMatrix zero