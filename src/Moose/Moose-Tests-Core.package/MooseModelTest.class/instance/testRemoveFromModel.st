tests
testRemoveFromModel
	
	| model parentModel |
	model := MooseModel new.
	parentModel := MooseModel new.
	parentModel add: model.
	self assert: model mooseModel == parentModel.
	self assert: model removeFromModel == model.
	self assert: parentModel entities isEmpty.
