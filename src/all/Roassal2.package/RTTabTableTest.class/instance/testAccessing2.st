tests
testAccessing2

	tab input: 'key	m1	m2	m3

A	1	2	5

B	2	5	4

C	1	7	4'.
	self assert: tab numberOfRows = 4.
	tab removeFirstRow.
	self assert: tab numberOfRows = 3.
	self assert: tab numberOfColumns = 4.
	self assert: tab firstColumn = (Array with: 'A' with: 'B' with: 'C').