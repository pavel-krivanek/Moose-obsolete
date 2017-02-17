tests
testAllSatisfy

	| t group el1 el2 el3 v |
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).

	self assert: (group allSatisfy: [ :c | c class == MooseEntity ] ).
	self deny: (group allSatisfy: [ :c | c = 10 ] ).