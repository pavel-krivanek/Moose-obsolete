tests
testRemoveModelNamedFromRoot
	"self debug: #testRemoveModelNamedFromRoot"

	| model1 model2 parentModel res |
	model1 := MooseModel new.
	model1 name: 'zork'.
	model2 := MooseModel new.
	model2 name: 'baz'.
	parentModel := MooseModel new.
	parentModel add: model1.
	parentModel add: model2.
	self assert: model1 mooseModel == parentModel.
	self assert: model2 mooseModel == parentModel.
	self assert: parentModel size equals: 2.
	res := parentModel removeModelNamed: 'zork'.
	self assert: res name equals: #zork.
	self assert: res mooseModel isNil.
	self deny: (parentModel includes: res).
	self assert: parentModel size equals: 1