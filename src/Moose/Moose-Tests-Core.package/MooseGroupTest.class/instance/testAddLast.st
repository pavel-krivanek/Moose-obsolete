tests
testAddLast
	| group el1 el2 el3 |
	group := MooseGroup new.
	group addLast: (el1 := MooseEntity new).
	group addLast: (el2 := MooseEntity new).
	group addLast: (el3 := MooseEntity new).
	self assert: (group allSatisfy: [ :c | c class == MooseEntity ]).
	self deny: (group allSatisfy: [ :c | c = 10 ])