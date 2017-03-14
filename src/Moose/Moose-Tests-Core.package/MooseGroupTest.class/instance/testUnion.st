tests
testUnion
	| t group1 group2 group3 el1 el2 el3 el4 |
	t := OrderedCollection new.
	group1 := MooseGroup new.
	group1 add: (el1 := MooseEntity new).
	group1 add: (el2 := MooseEntity new).
	group1 add: (el3 := MooseEntity new).
	group2 := MooseGroup new.
	group2 add: (el4 := MooseEntity new).
	group3 := group1 union: group2.
	self
		assert:
			(group3 entities
				includesAll:
					{el1.
					el2.
					el3.
					el4}).
	self assert: group3 entities size equals: 4.
	self
		assert:
			((group2 union: group1) entities
				includesAll:
					{el1.
					el2.
					el3.
					el4}).
	self assert: (group2 union: group1) ~= (group1 union: group2)