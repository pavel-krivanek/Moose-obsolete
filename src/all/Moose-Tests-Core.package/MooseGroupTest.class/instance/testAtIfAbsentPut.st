tests
testAtIfAbsentPut
	| group classA |
	group := MooseGroup new.
	classA := FAMIXClass new name: 'A'.
	group entityNamed: 'X' ifAbsentPut: classA.
	self assert: group size equals: 1.
	self assert: group first == classA