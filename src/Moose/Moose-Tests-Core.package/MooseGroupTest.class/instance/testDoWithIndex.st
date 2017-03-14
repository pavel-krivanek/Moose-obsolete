tests
testDoWithIndex
	| t group el1 el2 el3 |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	group
		doWithIndex: [ :x :i | 
			t
				add:
					{x.
					i} ].
	self
		assert: t asArray
		equals:
			{{el1.
			1}.
			{el2.
			2}.
			{el3.
			3}}