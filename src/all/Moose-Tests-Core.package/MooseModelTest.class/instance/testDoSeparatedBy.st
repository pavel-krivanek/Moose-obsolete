tests
testDoSeparatedBy
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseModel new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	group do: [ :x | t add: x ] separatedBy: [ t add: 10 ].
	self
		assert: t asArray
		equals:
			{el1.
			10.
			el2.
			10.
			el3}