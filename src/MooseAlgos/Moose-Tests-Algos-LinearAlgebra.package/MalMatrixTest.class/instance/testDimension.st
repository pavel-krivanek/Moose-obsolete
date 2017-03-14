test
testDimension
	"comment stating purpose of message"

	| m |
	m := self matrixClass new: 3 @ 7.
	self assert: m rowSize equals: 3.
	self assert: m columnSize equals: 7.
	self assert: m dimension equals: 3 @ 7