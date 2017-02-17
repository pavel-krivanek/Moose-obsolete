test
testAddWithMatrix
	"comment stating purpose of message"

	| m n mn |
	m := self matrixClass withAll: #(#(1 2) #(3 4) #(5 6)).
	n := self matrixClass withAll: #(#(10 20) #(30 40) #(50 60)).
	mn := self matrixClass withAll: #(#(11 22) #(33 44) #(55 66)).
	self assert: m + n equals: mn.
	m += n.
	self assert: m equals: mn.
	self assert: n equals: (self matrixClass withAll: #(#(10 20) #(30 40) #(50 60)))