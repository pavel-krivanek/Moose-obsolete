tests
testUnion
	| model1 model2 model3 el1 el2 el3 el4 |
	model1 := MooseModel new.
	model1 add: (el1 := MooseEntity new).
	model1 add: (el2 := MooseEntity new).
	model1 add: (el3 := MooseEntity new).
	model2 := MooseModel new.
	model2 add: (el4 := MooseEntity new).
	model3 := model1 union: model2.
	self
		assert:
			(model3 entities
				includesAll:
					{el1.
					el2.
					el3.
					el4}).
	self assert: model3 entities size equals: 4.
	self
		assert:
			((model2 union: model1) entities
				includesAll:
					{el1.
					el2.
					el3.
					el4}).
	self assert: (model2 union: model1) ~= (model1 union: model2)