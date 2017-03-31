union
testUnion
	| queryResult anotherResult |
	queryResult := MooseQueryResult on: #FakeReceiver withAll: #(1 2 3).
	self assert: ((queryResult union: #(4 5)) equalsTo: #(1 2 3 4 5)).
	self assert: (queryResult union: #(4 5)) receiver equals: #FakeReceiver.
	anotherResult := MooseQueryResult on: #FakeReceiver withAll: #(4 5).
	self assert: ((queryResult union: anotherResult) equalsTo: #(1 2 3 4 5)).
	self assert: (queryResult union: anotherResult) receiver equals: #FakeReceiver