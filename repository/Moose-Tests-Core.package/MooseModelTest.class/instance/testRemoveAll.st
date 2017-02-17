tests
testRemoveAll

	| t group el1 el2 el3 v |
	group := MooseModel new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).

	group removeAll: {el1 . el2 . el3}.
	self assert: group isEmpty