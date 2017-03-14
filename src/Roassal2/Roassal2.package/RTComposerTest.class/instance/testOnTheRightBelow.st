tests
testOnTheRightBelow
	| e1 e2 |
	e1 := RTBox element.
	view add: e1.
	composer group: #first.
	self assert: e1 position equals: (0 @ 0).

	e2 := RTBox element.
	view add: e2.
	composer group: #second. 
	composer move: #second onTheRightBelowOf: #first.

	self assert: e1 position equals: (0 @ 0).	
	self assert: e2 position equals: (5.5 @ 25.5)