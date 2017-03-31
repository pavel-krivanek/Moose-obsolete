tests
testUnion2
	| model1 group2 group3 el1 el2 el3 el4 |
	model1 := MooseModel new.
	model1 add: (el1 := MooseEntity new).
	model1 add: (el2 := MooseEntity new).
	model1 add: (el3 := MooseEntity new).
	group2 := MooseGroup new.
	group2 add: (el4 := MooseEntity new).
	group3 := model1 union: group2.
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
			((group2 union: model1) entities
				includesAll:
					{el1.
					el2.
					el3.
					el4}).
	self assert: (group2 union: model1) ~= (model1 union: group2)