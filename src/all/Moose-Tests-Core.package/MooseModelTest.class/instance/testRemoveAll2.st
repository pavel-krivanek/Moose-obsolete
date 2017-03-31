tests
testRemoveAll2
	| t group el1 el2 el3 v |
	group := MooseModel new.
	group add: (el1 := MooseEntity new).
	group add: el1.
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	group
		removeAll:
			{el1.
			el2.
			el3}.
	self deny: group isEmpty.
	self assert: group entities asArray equals: {el1}