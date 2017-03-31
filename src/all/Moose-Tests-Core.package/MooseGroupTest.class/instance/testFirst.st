tests
testFirst
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: el1.
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	self assert: group first == el1.
	self
		assert: (group first: 2) asArray
		equals:
			{el1.
			el1}.
	self
		assert: (group first: 4) asArray
		equals:
			{el1.
			el1.
			el2.
			el3}.
	self should: [ group first: 5 ] raise: Error