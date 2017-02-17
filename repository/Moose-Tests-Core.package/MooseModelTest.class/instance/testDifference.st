tests
testDifference
	| t model1 model2 model3 el1 el2 el3 el4 |
	t := OrderedCollection new.
	model1 := MooseModel new.
	model1 add: (el1 := MooseEntity new).
	model1 add: (el2 := MooseEntity new).
	model1 add: (el3 := MooseEntity new).
	model2 := MooseModel new.
	model2 add: (el4 := MooseEntity new).
	self assert: (model1 difference: model2) entities asSet equals: model1 entities asSet.
	self assert: (model1 difference: MooseModel new) entities asSet equals: model1 entities asSet.
	self assert: (model1 difference: model1) entities isEmpty.
	model2 add: el1.
	self assert: (model1 difference: model2) entities size equals: 2.
	self
		assert:
			((model1 difference: model2) entities
				includesAll:
					{el2.
					el3}).
	model1 add: el1.
	self assert: (model1 difference: model2) entities size equals: 2.
	self
		assert:
			((model1 difference: model2) entities
				includesAll:
					{el2.
					el3})