tests
testIntersect
	| model1 model2 model3 el1 el2 el3 el4 |
	model1 := MooseModel new.
	model1 add: (el1 := MooseEntity new).
	model1 add: (el2 := MooseEntity new).
	model1 add: (el3 := MooseEntity new).
	model2 := MooseModel new.
	model2 add: (el4 := MooseEntity new).
	model2 add: el1.
	self assert: (model1 intersection: MooseModel new) entities isEmpty.
	self assert: (model1 intersection: model2) entities asArray equals: {el1}.
	self assert: (MooseModel new intersection: MooseModel new) entities isEmpty