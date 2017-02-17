tests
testLast
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: el1.
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	self assert: group last == el3.
	self
		assert: (group last: 2) asArray
		equals:
			{el2.
			el3}.
	self
		assert: (group last: 4) asArray
		equals:
			{el1.
			el1.
			el2.
			el3}.
	self should: [ group last: 5 ] raise: Error