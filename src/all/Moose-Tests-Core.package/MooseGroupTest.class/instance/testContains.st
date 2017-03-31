tests
testContains

	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).

	self assert: (group contains: [:el| el1== el]).
	self assert: (group contains: [:el| el2== el]).
	self deny: (group contains: [:el| 100 == el]).
